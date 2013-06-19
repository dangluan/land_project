class AddAttachableIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :attachable_id, :integer
  end
end
