class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.datetime :date_of_manufacture
      t.datetime :date_of_expiration
      t.text :description,  :limit => 4294967295

      t.timestamps
    end
  end
end
