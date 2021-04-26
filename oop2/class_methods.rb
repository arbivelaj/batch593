class Castle
  attr_reader :category 
  def initialize(category)
    @category = category
  end

  def self.all_countries
    ["Italy", "Germany", "Spain"]
  end

  def self.all_categories
    ['Medieval', 'Norman', 'Ancient']
  end

  def check_category
    self.class.all_categories.include?(@category)
  end
end



bavarian = Castle.new("bavarian")
gothic = Castle.new("gothic")

p gothic.check_category

categories = Castle.all_categories
p categories
p bavarian.category, gothic.category