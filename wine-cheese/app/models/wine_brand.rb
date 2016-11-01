class WineBrand < ApplicationRecord
  has_many :wines
  has_many :pairings, through: :wines


  def wine_brand_company_and_names
    self.company + " " + self.name
  end

end
