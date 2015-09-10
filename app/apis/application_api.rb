class ApplicationApi < Grape::API
  format :json
  extend Napa::GrapeExtenders

  mount CouponsApi => '/coupons'
  mount RedeemedCouponsApi => '/redeemed_coupons'

  add_swagger_documentation
end

