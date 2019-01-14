class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.boolean :paid
      t.string :delivery_address
      t.string :billing_method
      t.integer :price

      t.timestamps
    end
  end
end
