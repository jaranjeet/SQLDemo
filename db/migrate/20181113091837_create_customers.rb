class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_street
      t.string :customer_city

      t.timestamps
    end
  end
end
