class Contact < ActiveRecord::Base
  attr_accessible :content, :email, :full_name, :phone
end
