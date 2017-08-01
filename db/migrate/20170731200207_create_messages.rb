class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :phone
      t.string :subject
      t.string :message_body

      t.timestamps
    end
  end
end
