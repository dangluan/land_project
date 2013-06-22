class Product < ActiveRecord::Base
  attr_accessible :manufacturer, :section_id, :attachments_attributes, :product_image, :date_of_expiration, :date_of_manufacture, :description, :name, :price
  has_attached_file :product_image, :styles => {:thumb => "244x180#"}, :default_url => "/assets/not_available.png"
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  just_define_datetime_picker :date_of_manufacture, :add_to_attr_accessible => true
  just_define_datetime_picker :date_of_expiration, :add_to_attr_accessible => true
  validates :date_of_manufacture, :date_of_expiration, :presence => true
end
