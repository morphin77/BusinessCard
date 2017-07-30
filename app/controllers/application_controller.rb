class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @portfolio_items=PortfolioItem.where(active: true)
end
