class PortfolioItem < ApplicationRecord
  has_attached_file :preview, styles: { medium: "300x300>", thumb: "100x100>" },
                              :default_url => "missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\z/
end
