class ChangeDataTypeForCategoryIdOnLands < ActiveRecord::Migration
  def up
    change_table :lands do |t|
      t.change :category_id, :integer
    end
  end

  def down
    change_table :lands do |t|
      t.change :category_id, :string
    end
  end
end
