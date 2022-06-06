require_relative 'download_image'
require_relative 'create_dog_identity'

class GetStarted
  def start
    begin
      puts 'Buncando por um dog...'
      response = DownloadImage.new.download

      if response
        puts 'Criando identidade...'
        CreateIdentity.new.create_image
      end
    rescue
      puts "Um erro foi encontrado, por favor tente novamente\n"
    end
  end
end

GetStarted.new.start
