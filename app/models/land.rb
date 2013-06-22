class Land < ActiveRecord::Base
  attr_accessible :attachments_attributes, :avatar, :category_id, :description, :land_position_text, :land_status, :price, :title, :location_latitude, :location_longitude, :location_address
  has_attached_file :avatar, :styles => {:thumb => "244x180#"}, :default_url => "/assets/not_available.png"
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  validates :title, :land_position_text, :land_status, :price, :presence => true
  
  def self.image_styles
    { :thumb => "500x300#"}
  end
  
  def self.land_count(land_type)
    Category.find_by_code(land_type).lands.count
  end
  
  def land_album_photo
    p_arr = Array.new
    self.attachments.each do |ap|
      p_arr.push(ap.asset.url(:thumb))
    end
    return p_arr
  end
  
  def self.get_news_land
    self.order("created_at desc").limit(10)
  end
end
