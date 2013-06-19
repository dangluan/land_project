class GmpointAddColumnsToLands < ActiveRecord::Migration
  def change
    add_column :lands, :location_latitude, :float
    add_column :lands, :location_longitude, :float
    add_column :lands, :location_address, :string
  end
end
