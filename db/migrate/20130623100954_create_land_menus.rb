class CreateLandMenus < ActiveRecord::Migration
  def change
    create_table :land_menus do |t|
      t.string :name
      t.integer :priority
      t.string :link_to

      t.timestamps
    end
  end
end
