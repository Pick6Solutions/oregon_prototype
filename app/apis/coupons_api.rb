class CouponsApi < Grape::API
  desc 'Get a list of all coupons'
  params do
    optional :ids, type: Array, desc: 'Array of coupon ids'
  end
  get do
    coupons = params[:ids] ? Coupon.where(id: params[:ids]) : Coupon.all
    represent coupons, with: CouponRepresenter
  end
  desc 'Get a list of available coupons'
  get :available do
   coupons = Coupon.where("number_available > 0")
   represent coupons, with: CouponRepresenter
  end

  desc 'Create a coupon'
  params do
    requires :name, type: String, desc: "Coupon's name"
    requires :pdf_url, type: String, desc: 'PDF URL for coupon'
    requires :image_url, type: String, desc: 'Image for coupon'
    requires :points, type: Integer, desc: 'The point value to redeem the coupon'
    requires :number_available, type: Integer, desc: 'Number of coupons available to redeem'
  end
  post do
    coupon = Coupon.create!(permitted_params)
    represent coupon, with: CouponRepresenter
  end

  desc 'Redeem a coupon'
  params do
    requires :user_id, type: String, desc: "User's ID"
    requires :user_name, type: String, desc: "User's Name"
    requires :coupon_id, type: Integer, desc: "Coupon's ID"
  end
  post :redeem do

    new_coupon = RedeemedCoupon.create!(permitted_params)
    redeemed_coupon = Coupon.find(params[:coupon_id])

    if redeemed_coupon.number_available > 0
      redeemed_coupon.number_available -= 1
    else
      redeemed_coupon.number_available = 0
    end
    redeemed_coupon.save!

    represent coupon, with: CouponRepresenter
  end

  resource :redeemed do
    desc 'Get a list of all redeemed coupons'
    params do
      optional :ids, type: Array, desc: 'Array of coupon ids'
    end
    get do
      coupons = params[:ids] ? RedeemedCoupon.where(id: params[:ids]) : Coupon.all
      represent coupons, with: CouponRepresenter
    end
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

    desc 'Delete a coupon'
    delete do
      coupon = Coupon.find(params[:id])
      puts coupon
      coupon.destroy!
      puts "here"
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
