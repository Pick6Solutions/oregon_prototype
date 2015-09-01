require 'spec_helper'

describe Coupon do

  it 'can be created' do
    coupon = create :coupon
    expect(coupon).to_not be_nil
  end

  it 'needs tests to be written!' do
    pending('write tests for Coupon!')
  end

end
