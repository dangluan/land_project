class AddAttachmentAvatarToLands < ActiveRecord::Migration
  def self.up
    change_table :lands do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :lands, :avatar
  end
end
