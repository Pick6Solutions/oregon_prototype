class RedeemedCouponRepresenter < Napa::Representer
  property :id, type: Integer
  property :coupon_id, type: Integer
  property :image_url, type: String
  property :redeemable_pdf_url, type: String
  property :is_redeemed
  property :coupon, embedded: true
end
