class AddAttachmentAssetToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :attachments, :asset
  end
end
