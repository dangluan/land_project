class Category < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :lands
end
