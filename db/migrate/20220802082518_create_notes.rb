class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|

      t.integer :user_id,  null: false
      t.string :word,      null: false
      t.text :english,     null: false
      t.text :japanese,    null: false
      t.boolean :complete, null: false
      t.boolean :is_public, null: false, default: false
      t.timestamps
    end
  end
end
