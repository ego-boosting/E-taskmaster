class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      
      t.integer :use_id, null: false
      t.string :title,   null: false
      t.text :body,      null: false
      t.text :reply,     null: false

      t.timestamps
    end
  end
end
