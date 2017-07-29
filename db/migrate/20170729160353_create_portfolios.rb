class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :previw_path
      t.string :demo
      t.string :git_path
      t.string :gems
      t.boolean :active

      t.timestamps
    end
  end
end
