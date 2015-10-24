require "rmagick"

class ImageGenerator < ActiveRecord::Base
  def self.generate(image_url, text)
    img = Magick::Image.read(image_url).first
    #canvas = Magick::Image.new(350, 350)

    draw = Magick::Draw.new
    draw.align = Magick::CenterAlign

    draw.annotate(img, 512, 512, 256, 450, text) do
      self.font = 'public/uploads/SimHei.ttf'
      self.pointsize = 48
      #self.font_weight = Magick::NormalWeight
      self.font_weight = Magick::BoldWeight
      self.fill = 'black'
      self.gravity = Magick::SouthEastGravity
      self.stroke = "white"
    end

    # result_image = canvas.to_blob { self.format = 'gif' }
    img.write('public/uploads/images/test.jpg')
  end

  private

  def self.image(image_url)
  end
end
