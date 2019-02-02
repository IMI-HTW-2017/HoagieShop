class AddPriceToMainIngredient < ActiveRecord::Migration[5.2]
  def change
    add_column :main_ingredients, :price, :integer
  end
end
