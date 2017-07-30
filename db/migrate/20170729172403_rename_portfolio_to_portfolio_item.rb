class RenamePortfolioToPortfolioItem < ActiveRecord::Migration[5.1]
  def change
    rename_table :portfolios, :portfolio_items
  end
end
