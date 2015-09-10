class Coupon < ActiveRecord::Base
  has_many :redeemed_coupons, :autosave => true

  def redeemed_by_user(user_id)
    self.redeemed_coupons.where(user_id: user_id)
  end
end
