class StaticPagesController < ApplicationController
  before_action :set_params_for_aside

  def about
    @title="Обо Мне"
  end

  def portfolio
    @title="Портфолио"
  end

  def contacts
    @title="Контакты"
    @message=Message.new
  end

  def publications
    @title="Публикации"
  end

  private
  def set_params_for_aside
    @portfolio_items = PortfolioItem.where(display: true)
    @publications = Publication.where(display: true)
  end
end
