class AddPreviewToPortfolioItem < ActiveRecord::Migration[5.1]
  def change
    add_attachment :portfolio_items, :preview
  end
end
