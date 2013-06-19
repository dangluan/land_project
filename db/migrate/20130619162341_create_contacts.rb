class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.integer :phone
      t.text :content,  :limit => 4294967295

      t.timestamps
    end
  end
end
