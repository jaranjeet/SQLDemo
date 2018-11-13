class CreateDepositors < ActiveRecord::Migration[5.2]
  def change
    create_table :depositors do |t|

      t.timestamps
    end
  end
end
