class CreateUserActions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_actions do |t|
      t.belongs_to :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
