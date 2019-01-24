class Sub < ApplicationRecord
  belongs_to :order
  belongs_to :bread
  belongs_to :main_ingredient
  belongs_to :sauce
  has_and_belongs_to_many :ingredients
  def show_all
    "#{self.main_ingredient.name} Hoagie stuffed with " +
        "#{self.ingredients.collect(&:name).inject {|list, ingredient| list + ", " + ingredient}} " +
        "topped with #{self.sauce.name}-Sauce"
  end
end
