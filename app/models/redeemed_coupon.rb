class RedeemedCoupon < ActiveRecord::Base
  after_create :save_coupon_name
  after_create :generate_unique_id
  belongs_to :coupon

  def self.redeemed_by_user(user_id, coupon_id)
    RedeemedCoupon.where(user_id: user_id, coupon_id: coupon_id)
  end

  def save_coupon_name
    coupon_id = self.coupon_id
    coupon = self.coupon
    self.coupon_name = coupon.name
    self.save
  end

  def generate_unique_id
    user_id = self.user_id
    coupon_id = self.coupon_id
    timestamp = self.created_at
    coupon_name = self.coupon_name
    number_redeemed = self.coupon.redeemed_coupons(user_id).count
    self.unique_id = "#{coupon_name}-#{user_id}-#{user_name}-#{number_redeemed}-#{timestamp}"
    self.save
  end

  def set_redeemed
    self.is_redeemed = true
    self.save
  end
end
