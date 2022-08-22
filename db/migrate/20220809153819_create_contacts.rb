class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|

      t.integer :user_id, null: false
      t.string :title,    null: false
      t.text :content,    null: false
      t.string :reply
      t.boolean :replied

      t.timestamps
    end
  end
end
