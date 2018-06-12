require 'httparty'
require 'json'

class RandomPostcodeGenerator
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_rand_postcode
    @rand_postcode = JSON.parse(self.class.get("/random/postcodes").body)['result']['postcode'].gsub(' ', '')
  end

end
