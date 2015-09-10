require 'spec_helper'

describe RedeemedCoupon do

  it 'can be created' do
    redeemed_coupon = create :redeemed_coupon
    expect(redeemed_coupon).to_not be_nil
  end

  it 'needs tests to be written!' do
    pending('write tests for RedeemedCoupon!')
  end

end
