class Article < ActiveRecord::Base
  attr_accessible :content, :menu_id, :title
end
