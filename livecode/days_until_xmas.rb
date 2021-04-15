require "date"
# returns, given a input date, the number of days until xmas

def days_until_xmas(day = Date.today)
  xmas_date = Date.new(day.year, 12, 25)
  xmas_date = xmas_date.next_year if day > xmas_date
  (xmas_date - day).to_i
end
# CASE 1: the input date is xmas
  # SOL 1: the solution will be 0
puts days_until_xmas(Date.new(2021, 12, 25)) == 0 

# CASE 2: the input date is before 25th Dec
 # SOL 2: subtract from the xmas day the input day
  # (another_day - today).to_i
puts days_until_xmas(Date.new(2021, 12, 20)) == 5

# CASE 3: the input date is after xmas
# SOL 3: compare the input date to next year's xmas
# date.year --- date.next_year    
puts days_until_xmas(Date.new(2021, 12, 26)) == 364

# CASE 4: the input date is today
# we are missing 256 days until xmas  
puts days_until_xmas(Date.new(2021, 4, 13)) == 256

puts days_until_xmas == 256
# TDD: i expect a specific output, then compare it two my method 