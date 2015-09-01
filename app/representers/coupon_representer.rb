class CouponRepresenter < Napa::Representer
  property :id, type: String
  property :name
  property :points
  property :number_available
end
