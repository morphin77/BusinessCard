class RenameColumnActiveinPortfolio < ActiveRecord::Migration[5.1]
  def change
    rename_column :portfolio_items, :active, :display
  end
end
