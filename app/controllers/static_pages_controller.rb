class StaticPagesController < ApplicationController
  before_action :set_params_for_aside

  def about
    @title="About"
  end

  def cv
    @title="CV"
  end

  def portfolio
    @title="Portfolio"
  end

  def contacts
    @title="Contacts"
  end

  def publications
    @title="Publication"
  end

  private
  def set_params_for_aside
    @portfolio_items = PortfolioItem.where(active: true)
  end
end
