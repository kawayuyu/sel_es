class CreateRules < ActiveRecord::Migration[6.0]
  def change
    create_table :rules do |t|
      t.references :user, null: false, foreign_key: true
      t.text :if_1,         null: false
      t.text :then_1,       null: false
      t.timestamps
    end
  end
end
