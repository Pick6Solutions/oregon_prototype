class CouponsApi < Grape::API
  desc 'Get a list of coupons'
  params do
    optional :ids, type: Array, desc: 'Array of coupon ids'
  end
  get do
    coupons = params[:ids] ? Coupon.where(id: params[:ids]) : Coupon.all
    represent coupons, with: CouponRepresenter
  end

  desc 'Create a coupon'
  params do
    requires :name, type: String, desc: "Coupon's name"
    requires :points, type: Integer, desc: 'The point value to redeem the coupon'
    requires :number_available, type: Integer, desc: 'Number of coupons available to redeem'
  end

  post do
    coupon = Coupon.create!(permitted_params)
    represent coupon, with: CouponRepresenter
  end

  params do
    requires :id, desc: 'ID of the coupon'
  end
  route_param :id do
    desc 'Get an coupon'
    get do
      coupon = Coupon.find(params[:id])
      represent coupon, with: CouponRepresenter
    end

    desc 'Update a coupon'
    params do
      optional :name, type: String, desc: "Coupon's name"
      optional :points, type: Integer, desc: 'The point value to redeem the coupon'
      optional :number_available, type: Integer, desc: 'Number of coupons available to redeem'
    end
    put do
      # fetch coupon record and update attributes.  exceptions caught in app.rb
      coupon = Coupon.find(params[:id])
      coupon.update_attributes!(permitted_params)
      represent coupon, with: CouponRepresenter
    end
  end
end
