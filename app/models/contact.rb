class Contact < ActiveRecord::Base
  attr_accessible :content, :email, :full_name, :phone
  validates :full_name, :email, :content, :presence => true
end
