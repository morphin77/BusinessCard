class StaticPagesController < ApplicationController
  layout :resolve_layout
  def Home
  end

  def About
  end

  def CV
  end

  private

  def resolve_layout
    case action_name
    when "Home"
      "lending"
    else
      "application"
    end
  end

end
