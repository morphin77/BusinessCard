class PortfolioItem < ApplicationRecord
  has_attached_file :preview, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\z/
  @portfolio_items = PortfolioItem.where(active: true)
end
