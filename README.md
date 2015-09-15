# pick6-coupons-service

:bow: Please put your auspicious [Travis status button](http://docs.travis-ci.com/user/status-images/) here :bow:

1. [Overview](#overview)
2. [How Does It Work](#how-does-it-work)
3. [Endpoints](#endpoints)
4. [Development](#development)
5. [Extra Links](#extra-links)

### Overview

This servic manages coupons for the storm rewards store.

Built with:
- [Napa](https://github.com/bellycard/napa) - Napa is a simple framework for building Rack based APIs using Grape, Roar and ActiveRecord.

### How Does It Work

Coupons consist of the following attributes:
- Name
- Description
- PDF URL (S3 Link)
- IMAGE URL (S3 Link)
- Point value
- Number available

Redeemed Coupons belong to a coupon and consist of the following attributes:
- Coupon ID of it's parent coupon
- User ID of user redeemeding
- User Name of user redeeming
- Generated Unique ID that follow the convention:
```ruby
"CID:#{coupon_id} | UN:#{user_name} | NR:#{number_redeemed} | TIME:#{timestamp} | #{SecureRandom.urlsafe_base64(10)}"
```
- Is redeemed boolean
- Generated redeemable pdf url (S3 link)

### Endpoints

Swagger Docs: 
With local server running. Go to [Swagger UI Sample](http://petstore.swagger.io/) and change url to http://localhost:9393/swagger_doc to view interative endpoint docs. Alternatively, run [Swagger UI](https://github.com/swagger-api/swagger-ui) locally.

Postman collection: 
https://www.getpostman.com/collections/6dbb46ca82986a77cb22

```    GET        /coupons(.:format)                       # Get a list of all coupons
     GET        /coupons/available(.:format)             # Get a list of available coupons
     POST       /coupons(.:format)                       # Create a coupon
     GET        /coupons/redeemed(.:format)              # Get a list of all redeemed coupons
     GET        /coupons/:id(.:format)                   # Get an coupon
     DELETE     /coupons/:id(.:format)                   # Delete a coupon
     PUT        /coupons/:id(.:format)                   # Update a coupon
     GET        /redeemed_coupons(.:format)              # Get a list of redeemed_coupons
     POST       /redeemed_coupons(.:format)              # Redeem a coupon
     POST       /redeemed_coupons/set_redeemed/:coupon_id(.:format) # Set a coupon as finally redeemed by user
     GET        /redeemed_coupons/user/:user_id(.:format) # Retrieve all user's avialable coupons
     GET        /swagger_doc(.:format)                   # Swagger compatible API description
     GET        /swagger_doc/:name(.:format)             # Swagger compatible API description for specific API```

### Development

```
bundle install

rake db:reset

RACK_ENV=test rake db:reset

bundle exec napa server
```

Send your first request:

```bash
curl -X GET http://localhost:9393/coupons
```

Production is deployed to heroku at: https://storm-coupons-service.herokuapp.com/

Swagger Docs:

### Extra Links

- [Grape](https://github.com/ruby-grape/grape)
- [Roar](https://github.com/ruby-grape/grape-roar)
- [Grape-Swagger](https://github.com/ruby-grape/grape-swagger)
- [Postman](https://www.getpostman.com/)