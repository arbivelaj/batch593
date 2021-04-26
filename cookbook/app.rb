require_relative "router"
require_relative "recipe"
require_relative "cookbook"
require_relative "controller"
require_relative "view"

c = Cookbook.new("recipes.csv")
v = View.new
controller = Controller.new(c,v)

r = Router.new(controller)
r.run


# add a new action to our router
# ask the user for an ingredient
# build the url at which we want to scrape
# get the first 10 recipes' names and descriptions
# create 10 instances of recipes -> display 
# the user chooses a recipe, by index
# we store that in the cookbook -> also in csv