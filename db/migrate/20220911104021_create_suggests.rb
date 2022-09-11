class CreateSuggests < ActiveRecord::Migration[6.1]
  def change
    create_table :suggests do |t|
      
      t.integer :admin_id, null: false
      t.string :word,      null: false
      t.text :english,     null: false
      t.text :japanese,    null: false

      t.timestamps
    end
  end
end
