class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :nick_name
      t.string :supporter_name
      t.integer :phone

      t.timestamps
    end
  end
end
