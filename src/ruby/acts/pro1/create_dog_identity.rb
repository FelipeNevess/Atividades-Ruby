require 'mini_magick'

class CreateIdentity
  def create_image
    begin
      image = MiniMagick::Image.new('./img/identidade.png')
      image.combine_options do |c|
        c.draw 'image Over 124,78,236,320 my_dog.jpg'
      end

      image.write '../../../../identidade.png'

      File.delete('my_dog.jpg')
    rescue Exception => err
      puts "Erro ao criar a identidade do dog, #{err}"
    end
  end
end
