class CreateSuccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :successes do |t|
      t.references :user, null: false, foreign_key: true
      t.text :success,    null: false
      t.date :day,        null: false
      t.integer :status,  null: false
      t.timestamps
    end
  end
end
