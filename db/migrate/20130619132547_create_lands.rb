class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :title
      t.string :land_position_text
      t.string :land_status
      t.decimal :price
      t.text :description, :limit => 4294967295
      t.integer :category_id

      t.timestamps
    end
  end
end
