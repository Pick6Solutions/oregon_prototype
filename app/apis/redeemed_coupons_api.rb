class RedeemedCouponsApi < Grape::API
  desc 'Get a list of redeemed_coupons'
  params do
    optional :user_ids, type: Array, desc: 'Array of User ids'
    optional :coupon_ids, type: Array, desc: 'Array of Coupon ids'
  end
  get do
    if params[:user_ids] 
      array_of_coupons = RedeemedCoupon.where(user_id: params[:user_ids])
    elsif params[:coupon_ids]
      array_of_coupons = RedeemedCoupon.where(coupon_id: params[:coupon_ids]).coupon
    else
      array_of_coupons = RedeemedCoupon.all
    end
    redeemed_coupons = array_of_coupons.map {|redeemed_coupon| redeemed_coupon.coupon}

    represent redeemed_coupons, with: CouponRepresenter
  end

  desc 'Create an redeemed_coupon'
  params do
  end

  post do
    redeemed_coupon = RedeemedCoupon.create!(permitted_params)
    represent redeemed_coupon, with: RedeemedCouponRepresenter
  end

  params do
    requires :id, desc: 'ID of the redeemed_coupon'
  end
  route_param :id do
    desc 'Get an redeemed_coupon'
    get do
      redeemed_coupon = RedeemedCoupon.find(params[:id])
      represent redeemed_coupon, with: RedeemedCouponRepresenter
    end

    desc 'Update an redeemed_coupon'
    params do
    end
    put do
      # fetch redeemed_coupon record and update attributes.  exceptions caught in app.rb
      redeemed_coupon = RedeemedCoupon.find(params[:id])
      redeemed_coupon.update_attributes!(permitted_params)
      represent redeemed_coupon, with: RedeemedCouponRepresenter
    end
  end
end
