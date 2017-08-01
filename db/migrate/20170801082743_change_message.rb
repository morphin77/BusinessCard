class ChangeMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :full_name, :string
    remove_column :messages, :phone
  end
end
