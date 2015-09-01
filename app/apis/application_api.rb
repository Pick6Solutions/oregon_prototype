class ApplicationApi < Grape::API
  format :json
  extend Napa::GrapeExtenders

  mount CouponsApi => '/coupons'

  add_swagger_documentation
end

