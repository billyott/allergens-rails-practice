class User < ApplicationRecord
    has_many :recipes
    has_many :allegens
    has_many :ingredients, through: :allergens
    validates :name, presence: true

    def get_ingredients
        ingredients = []
        self.recipes.each do |recipe|
            recipe.ingredients.each{|ingredient| ingredients << ingredient}
        end
        ingredients
    end

end