class CreateSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :subs do |t|
      t.references :order, foreign_key: true
      t.references :bread, foreign_key: true
      t.references :main_ingredient, foreign_key: true
      t.references :sauce, foreign_key: true

      t.timestamps
    end
  end
end
