class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :loan_number
      t.float :amount

      t.timestamps
    end
  end
end
