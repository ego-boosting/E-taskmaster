class CreateSuggests < ActiveRecord::Migration[6.1]
  def change
    create_table :suggests do |t|

      t.integer :admin_id,         null: false
      t.string :suggest_word,      null: false
      t.text :suggest_english,     null: false
      t.text :suggest_japanese,    null: false

      t.timestamps
    end
  end
end
