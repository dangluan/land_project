class Trademark < ActiveRecord::Base
  attr_accessible :name, :attachments_attributes
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true
end
