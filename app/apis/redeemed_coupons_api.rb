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

  desc 'Redeem a coupon'
  params do
    requires :coupon_id, type: Integer, desc: 'ID of the redeemed_coupon'
    requires :user_id, type: String, desc: "User's ID"
    requires :user_name, type: String, desc: "User's Name"
  end
  post do
    redeemed_coupon = RedeemedCoupon.new(permitted_params)
    coupon = Coupon.find(params[:coupon_id])

    unless coupon.nil?
      if coupon.number_available > 0
        if coupon.number_available == 1
          coupon.number_available = 0
        else
          coupon.number_available -= 1
        end
        if coupon.save && redeemed_coupon.save
          represent redeemed_coupon, with: RedeemedCouponRepresenter
        end
      else
        error!("Not available for redemption.")
      end
    end
  end

  namespace :set_redeemed do
    route_param :coupon_id do
      desc 'Set a coupon as finally redeemed by user'
      params do
        requires :coupon_id, type: Integer, desc: 'ID of the redeemed coupon to use'
      end
      post do
        redeemed_coupon = RedeemedCoupon.find(params[:coupon_id])
        redeemed_coupon.set_redeemed

        represent redeemed_coupon, with: RedeemedCouponRepresenter
      end
    end
  end

  namespace :user do
    params do
      requires :user_id, desc: 'ID of user'
    end
    route_param :user_id do
      desc "Retrieve all user's avialable coupons"
      get do
        redeemed_coupons = RedeemedCoupon.where(user_id: params[:user_id], is_redeemed: false)

        represent redeemed_coupons, with: RedeemedCouponRepresenter
      end
    end
  end

  # namespace :set_redeemed do
  #   params do
  #     requires :id, type: Integer, desc: 'ID of the redeemed coupon to use'
  #     requires :user_id, type: String, desc: 'ID of the user redeeming the coupon'
  #   end
  #   post do
  #     coupon = RedeemedCoupon.where(id: params[:id], user_id: params[:user_id])
  #     coupon.set_redeemed

  #     puts coupon

  #     {redeemed: coupon.set_redeemed}
  #   end
  # end
end