require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_list = open(url).read
ingredient = JSON.parse(ingredients_list)
list = ingredient["drinks"]
list.each do |hash|
  Ingredient.create(name: hash["strIngredient1"])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
