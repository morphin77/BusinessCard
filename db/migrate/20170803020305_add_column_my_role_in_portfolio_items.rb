class AddColumnMyRoleInPortfolioItems < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolio_items, :my_role, :string
  end
end
