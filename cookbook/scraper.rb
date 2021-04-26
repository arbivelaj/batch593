class Scraper
  def call(ingredient)
    scraped_recipes = []
    # build the url at which we want to scrape
    url = "https://www.allrecipes.com/search/results/?search=#{ingredient}"
    # get the first 10 recipes' names and descriptions
    html = URI.open(url)
    doc = Nokogiri::HTML(html, nil, 'utf-8')
    doc.search(".card__detailsContainer-left").first(5).each do |element|
      name = element.search(".card__title").text.strip
      desc = element.search(".card__summary").text.strip
      rating = element.search(".review-star-text").text.strip
      # create 5 instances of recipes -> display 
      recipe = Recipe.new(name, desc, rating)
      scraped_recipes << recipe
    end
    scraped_recipes
  end
end