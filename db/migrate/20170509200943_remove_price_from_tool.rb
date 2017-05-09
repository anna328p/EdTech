class RemovePriceFromTool < ActiveRecord::Migration[5.0]
  def change
    remove_column :tools, :price, :integer
  end
end
