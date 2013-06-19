class Attachment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :asset
  belongs_to :attachable, :polymorphic => true
  has_attached_file :asset, :styles => {:thumb => "500x300#"}
end
