require "rmagick"

class ImageGenerator < ActiveRecord::Base
  def self.generate(image_url, text)
    img=Magick::Image.read(image_url).first
    #canvas = Magick::Image.new(350, 350)

    draw = Magick::Draw.new
    draw.annotate(img, 350, 350, 10, 10, text) do
      self.gravity = Magick::CenterGravity
      self.font = 'public/uploads/font-1.ttf'
      self.pointsize = 33
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
