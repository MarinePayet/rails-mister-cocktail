class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end


# Doit-on creer une view new de chaque model ? pour le form ? ET LE  mettre
#sur la view new du cocktail ?
