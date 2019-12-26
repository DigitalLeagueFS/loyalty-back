class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :cost
      t.integer :bonus
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
