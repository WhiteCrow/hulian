require "rmagick"

class ImageGenerator

  def self.generate(image_url, text)
    img = Magick::Image.read(image_url).first
    #canvas = Magick::Image.new(350, 350)

    draw = Magick::Draw.new
    draw.align = Magick::CenterAlign

    draw.annotate(img, 512, 512, 256, 450, text) do
      self.font = 'public/uploads/SimHei.ttf'
      self.pointsize = 45
      #self.font_weight = Magick::NormalWeight
      self.font_weight = Magick::BoldWeight
      self.fill = 'black'
      self.gravity = Magick::SouthEastGravity
      self.stroke = "white"
    end

    img.write('public/uploads/captioned_images/test.jpg')
  end

end
