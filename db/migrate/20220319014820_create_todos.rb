class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string "title", null: false
      t.text "comment", default: ""
      t.boolean "is_completed", default: false
      t.references :user, null: false, foreign_key: true
      t.references :flower, null: false, foreign_key: true
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
