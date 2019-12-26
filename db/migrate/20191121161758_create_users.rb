class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :balance
      t.string :phone

      t.timestamps
    end
  end
end
