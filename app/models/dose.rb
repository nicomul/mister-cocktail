class Dose < ActiveRecord::Base
  validates :description, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :ingredient, :scope => [:cocktail]
  validates :cocktail, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
end
