class DropPreviewPathFromPortfolios < ActiveRecord::Migration[5.1]
  def change
    remove_column :portfolio_items, :previw_path
  end
end
