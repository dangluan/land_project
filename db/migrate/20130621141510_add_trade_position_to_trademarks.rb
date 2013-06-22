class AddTradePositionToTrademarks < ActiveRecord::Migration
  def change
    add_column :trademarks, :trade_position, :string
  end
end
