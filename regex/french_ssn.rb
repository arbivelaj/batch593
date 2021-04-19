require "date"
require "yaml"

PATTERN = /^(?<gender>1|2) (?<year>\d{2}) (?<month>0[1-9]|1[0-2]) (?<district>\d{2}) (\d{3} \d{3}) (?<key>\d{2})$/

# a man, born in December, 1984 in Seine-Maritime.
def ssn(number)
  match_data = number.match(PATTERN)
  if match_data && valid?(number, match_data[:key])
    gender = gender(match_data[:gender])
    year = year(match_data[:year])
    month = month(match_data[:month])
    district = district(match_data[:district])
    "a #{gender}, born in #{month}, #{year} in #{district}."
  else
    'the number is invalid'
  end
end

def gender(gender_code)
  gender_code == "1" ? "man" : "woman"
end

def year(year_string)
  "19" + year_string
end

def month(month_code)
  Date::MONTHNAMES[month_code.to_i]
end

def district(district_code)
  YAML.load_file("data/french_departments.yml")[district_code]
end

def valid?(ssn, key)
  # equal to the remainder of the division of (97 - ssn_without_key) by 97
  (97 - ssn.delete(" ")[0..12].to_i) % 97 == key.to_i 
end

p ssn("1 84 12 76 451 089 46")

