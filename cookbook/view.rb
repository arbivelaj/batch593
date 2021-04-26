class View
  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}, #{recipe.description}"
    end
  end

  def ask_for(something)
    puts "give me a #{something}"
    gets.chomp
  end

  def ask_for_index
    puts "which one?"
    gets.chomp.to_i - 1
  end
end