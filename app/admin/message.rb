ActiveAdmin.register Message do
  permit_params :email, :full_name, :subject, :message_body, :is_read

  index do
    column :full_name
    column :email
    column :subject
    column :is_read
    actions
  end

end
