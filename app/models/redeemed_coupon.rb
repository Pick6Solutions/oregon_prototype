class RedeemedCoupon < ActiveRecord::Base
  before_save :save_coupon_name, :on => :create
  before_save :generate_unique_id, :on => :create
  belongs_to :coupon

  def self.redeemed_by_user(user_id, coupon_id)
    RedeemedCoupon.where(user_id: user_id, coupon_id: coupon_id)
  end

  def save_coupon_name
    coupon_id = self.coupon_id
    coupon = self.coupon
    self.coupon_name = coupon.name
  end

  def generate_unique_id
    user_id = self.user_id
    coupon_id = self.coupon_id
    timestamp = self.created_at
    coupon_name = self.coupon_name
    number_redeemed = self.coupon.redeemed_coupons(user_id).count
    self.unique_id = "CID:#{coupon_name}|UID:#{user_id}|UN:#{user_name}|NR:#{number_redeemed}|TIME:#{timestamp}"
  end

  def set_redeemed
    self.is_redeemed = true
    self.save
  end
end
