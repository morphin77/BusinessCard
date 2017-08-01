ActiveAdmin.register PortfolioItem do
  permit_params :previw_path, :demo, :git_path, :technologies, :display, :title, :description, :finished, :preview

  index do
    column :title
    column :description
    column :active
    actions
  end

form :partial => "form"

end
