class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.float :balance
      t.references :branch

      t.timestamps
    end
  end
end
