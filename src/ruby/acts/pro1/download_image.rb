require 'down'
require_relative 'api'

class DownloadImage
  def download
    begin
      url = 'https://dog.ceo/api/breeds/image/random'
      response = FetchApiDog.new(url).response_json.strip

      Down.download(response, destination: './my_dog.jpg', max_size: 3 * 150 * 100)

      return true
    rescue Exception => err
      puts "Erro ao procurar um dog, #{err}\n"
      puts 'Tente novamente'
      return false
    end
  end
end
