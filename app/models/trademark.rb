class Trademark < ActiveRecord::Base
  attr_accessible :name, :attachments_attributes, :trade_position
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true

  def self.get_trademarks(position)
    trade_arr = Array.new
    trades = self.where(trade_position: position)
    if trades and trades.first and attas = trades.first.attachments
      attas.each do |att|
        if position == "bottom"
          trade_arr.push(att.asset.url(:bottom_trade)) if att.asset.file?
        else
          trade_arr.push(att.asset.url(:right_left_trade)) if att.asset.file?
        end
      end
    end
    trade_arr
  end
end
