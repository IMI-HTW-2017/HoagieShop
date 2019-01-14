class CreateJoinTableIngredientSub < ActiveRecord::Migration[5.2]
  def change
    create_join_table :ingredients, :subs
  end
end
