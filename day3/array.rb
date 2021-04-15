musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# CRUD

# read one element -> by index
p musicians[1]

# create one element
musicians.push("Dion")
musicians << "Marcel"

# update one element -> by index
musicians[-1] = "Pascalis"
# musicians[5] = "Pascalis"

# delete one element
musicians.delete("Dion")
musicians.delete_at(-1)