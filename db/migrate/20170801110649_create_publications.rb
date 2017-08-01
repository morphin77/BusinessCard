class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.string :description
      t.string :resource_name
      t.string :link
      t.boolean :display

      t.timestamps
    end
  end
end
