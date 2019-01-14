class Sub < ApplicationRecord
  belongs_to :order
  belongs_to :bread
  belongs_to :main_ingredient
  belongs_to :sauce
  has_and_belongs_to_many :ingredients
end
