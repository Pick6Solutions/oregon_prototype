require 'spec_helper'

def app
  ApplicationApi
end

describe CouponsApi do
  include Rack::Test::Methods

  before(:each) do
    @coupon = create(:coupon)
  end

  describe 'GET /coupons' do
    it 'Should return an array of coupons' do
      get '/coupons'

      expect(response_body).to eq({"data": [{ object_type: 'coupon', id: '#{@coupon.id}', name: '#{@coupon.name}', points: '#{@coupon.points}', number_available: '#{@coupon.number_available}' }]}.to_json)
    end
  end

end
