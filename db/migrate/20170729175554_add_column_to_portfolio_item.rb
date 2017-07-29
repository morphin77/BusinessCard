class AddColumnToPortfolioItem < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolio_items, :finished, :boolean
  end
end
