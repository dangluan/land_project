class AddSectionIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :section_id, :integer
  end
end
