class Attachment < ActiveRecord::Base
  attr_accessible :asset
  belongs_to :attachable, :polymorphic => true
  has_attached_file :asset,
                    :styles => {:thumb => "500x300#", :small => "100x120#", :bottom_trade => "150x80#", :right_left_trade => "180x240#"}
end

