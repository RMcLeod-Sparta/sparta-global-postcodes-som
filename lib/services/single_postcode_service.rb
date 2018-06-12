require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
      @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_postcode
    p @single_postcode_data["result"]["postcode"]
  end

  def get_response_code
    @single_postcode_data['status']
  end

  def get_result
    @single_postcode_data['result']
  end

  def get_postcode_length
    @single_postcode_data["result"]["postcode"].gsub(' ', '').length
  end

  def get_quality_key
    @single_postcode_data['result']['quality']
  end

  def get_ordinance_survey_easting
    @single_postcode_data['result']['eastings']
  end

end
# 
# call = SinglePostcodeService.new
# call.get_single_postcode("KT66HY")
# call.get_postcode
