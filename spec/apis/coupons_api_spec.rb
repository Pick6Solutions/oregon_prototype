require 'spec_helper'

def app
  ApplicationApi
end

describe CouponsApi do
  include Rack::Test::Methods

  before(:each) do
    Coupon.all.each do |coupon|
        coupon.destroy!
    end
    @coupon = create(:coupon)
  end

  describe 'GET /coupons' do
    it 'Should return an array of coupons' do
      get '/coupons'
      expect(last_response.status).to eq 200
    end
  end

end
