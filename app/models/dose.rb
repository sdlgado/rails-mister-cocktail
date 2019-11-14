class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient,
    message: "a given cocktail/ingredient couple is unique" }
  belongs_to :cocktail
  belongs_to :ingredient
end
