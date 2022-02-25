class CreateRules < ActiveRecord::Migration[6.0]
  def change
    create_table :rules do |t|
      t.references :user, null: false, foreign_key: true
      t.text :if,         null: false
      t.text :then,       null: false
      t.timestamps
    end
  end
end
