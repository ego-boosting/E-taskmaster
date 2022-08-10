class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

      t.integer :user_id,    null: false
      t.string :title,       null: false
      t.boolean :complete,   null: false, default: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at,   null: false

      t.timestamps
    end
  end
end
