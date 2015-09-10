class CouponRepresenter < Napa::Representer
  property :id, type: String
  property :name
  property :points
  property :number_available
  property :pdf_url
  property :image_url
  property :single_use
end
