require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end

Cocktail.create!(
  name: "Gin and Tonic",
  banner_url: "https://www.shakedrinkrepeat.com/wp-content/uploads/2018/03/the_perfect_gin_and_tonic_recipe_photo.jpg"
)
Cocktail.create!(
  name: "Strawberry Daiquiri",
  banner_url: "http://www.delscookingtwist.com/wp-content/uploads/2018/03/Strawberry-Daiquiri-with-Cardamom_9988.jpg"
)
Cocktail.create!(
  name: "Mojito",
  banner_url: "https://cdn.liquor.com/wp-content/uploads/2018/09/04153106/mojito-720x720-recipe.jpg"
)
Cocktail.create!(
  name: "Negroni",
  banner_url: "https://cdn.liquor.com/wp-content/uploads/2018/05/08110806/negroni-720x720-recipe.jpg"
)
Cocktail.create!(
  name: "Gin and Tonic",
  banner_url: "https://www.shakedrinkrepeat.com/wp-content/uploads/2018/03/the_perfect_gin_and_tonic_recipe_photo.jpg"
)
Cocktail.create!(
  name: "Strawberry Daiquiri",
  banner_url: "http://www.delscookingtwist.com/wp-content/uploads/2018/03/Strawberry-Daiquiri-with-Cardamom_9988.jpg"
)
Cocktail.create!(
  name: "Mojito",
  banner_url: "https://cdn.liquor.com/wp-content/uploads/2018/09/04153106/mojito-720x720-recipe.jpg"
)
Cocktail.create!(
  name: "Negroni",
  banner_url: "https://cdn.liquor.com/wp-content/uploads/2018/05/08110806/negroni-720x720-recipe.jpg"
)
puts "Done!"
