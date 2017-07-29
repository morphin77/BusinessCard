class StaticPagesController < ApplicationController
  def about
    @title="About"
  end

  def cv
    @title="CV"
  end

  def portfolio
    @title="Portfolio"
    @portfolio_items = PortfolioItem.where(active: "t").order(:created_at)
  end

  def contacts
    @title="Contacts"
  end

  def publications
    @title="Publication"
  end
end
