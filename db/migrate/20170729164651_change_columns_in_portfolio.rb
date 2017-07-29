class ChangeColumnsInPortfolio < ActiveRecord::Migration[5.1]
  def change
    change_column :portfolios, :previw_path, :string, :null => "true"
    change_column :portfolios, :demo, :string, :null => "true"
    change_column :portfolios, :active, :boolean, :default => "false"
    rename_column :portfolios, :name, :title
    rename_column :portfolios, :gems, :technologies
  end
end
