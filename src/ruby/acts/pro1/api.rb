require 'open-uri'
require 'http'

class FetchApiDog
  def initialize(url)
    response = HTTP.get(url)

    @response = response
  end

  def response_json
    JSON.parse(@response)['message']
  end
end
