class AddDescriptionToPortfolois < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :description, :string
  end
end
