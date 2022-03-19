class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string "flower_name", default: ""
      t.string "color_code", default: ""
      t.string "image_url", default: ""
      t.timestamps
    end
  end
end
