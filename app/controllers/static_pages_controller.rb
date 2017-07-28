class StaticPagesController < ApplicationController
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
end
