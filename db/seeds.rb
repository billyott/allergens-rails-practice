# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Allergen.destroy_all


#user seeds
bill = User.create(name: "Bill")
schy = User.create(name: "Schyler")
lisa = User.create(name: "Lisa")
lucy = User.create(name: "Lucy")
mom = User.create(name: "Mom")

#ingredient seeds
egg = Ingredient.create(name: "egg")
flour = Ingredient.create(name: "flour")
sugar = Ingredient.create(name: "sugar")
soy = Ingredient.create(name: "soy sauce")
msg = Ingredient.create(name: "msg")
broc = Ingredient.create(name: "broc")
beef = Ingredient.create(name: "beef")
toast = Ingredient.create(name: "toast")

#recipe seeds
breakfast = Recipe.create(name: "Breakfast", user_id: bill.id)
cake = Recipe.create(name: "Cake", user_id:schy.id)
sauce = Recipe.create(name: "Sauce", user_id:bill.id)
beefy_broc = Recipe.create(name: "Beefy Broc", user_id: lisa.id)
msg_broc = Recipe.create(name: "MSG Broc", user_id: lucy.id)
beef_toast = Recipe.create(name: "Beef Toast", user_id: mom.id)
msg_toast = Recipe.create(name: "MSG Toast", user_id: schy.id)
beefy_beef = Recipe.create(name: "Beefy Beef", user_id:lisa.id)

#recipeingredient seeds
egg_breakfast = RecipeIngredient.create(recipe_id: breakfast.id, ingredient_id: egg.id)
toast_breakfast = RecipeIngredient.create(recipe_id: breakfast.id, ingredient_id: toast.id)
egg_cake = RecipeIngredient.create(recipe_id: cake.id, ingredient_id: egg.id)
flour_cake = RecipeIngredient.create(recipe_id: cake.id, ingredient_id: flour.id)
sugar_cake = RecipeIngredient.create(recipe_id: cake.id, ingredient_id: sugar.id)
soy_sauce = RecipeIngredient.create(recipe_id: sauce.id, ingredient_id: soy.id)
msg_sauce = RecipeIngredient.create(recipe_id: sauce.id, ingredient_id: msg.id)
beef_beefybroc = RecipeIngredient.create(recipe_id: beefy_broc.id, ingredient_id: beef.id)
broc_beefybroc = RecipeIngredient.create(recipe_id: beefy_broc.id, ingredient_id: broc.id)
msg_msgbroc = RecipeIngredient.create(recipe_id: msg_broc.id, ingredient_id: msg.id)
broc_msgbroc = RecipeIngredient.create(recipe_id: msg_broc.id, ingredient_id: broc.id)
beef_beeftoast = RecipeIngredient.create(recipe_id: beef_toast.id, ingredient_id: beef.id)
toast_beeftoast = RecipeIngredient.create(recipe_id: beef_toast.id, ingredient_id: toast.id)
msg_msgtoast = RecipeIngredient.create(recipe_id: msg_toast.id, ingredient_id: msg.id)
toast_msgtoast = RecipeIngredient.create(recipe_id: msg_toast.id, ingredient_id: toast.id)
beef_beefybeef = RecipeIngredient.create(recipe_id: beefy_beef.id, ingredient_id: beef.id)

#allergen seeds
bill_egg = Allergen.create(user_id: bill.id, ingredient_id: egg.id)
schy_egg = Allergen.create(user_id: schy.id, ingredient_id: egg.id)
lucy_egg = Allergen.create(user_id: lucy.id, ingredient_id: egg.id)
schy_msg = Allergen.create(user_id: schy.id, ingredient_id: msg.id)
mom_msg = Allergen.create(user_id: mom.id, ingredient_id: msg.id)
lisa_beef = Allergen.create(user_id: lisa.id, ingredient_id: beef.id)
