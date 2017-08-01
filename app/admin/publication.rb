ActiveAdmin.register Publication do
  permit_params :title, :description, :resource_name, :link, :display
end
