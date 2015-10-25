require "rmagick"
require "tempfile"

class ImageProcessor
  def self.caption_image(base_image, caption, user=nil)
    img = Magick::Image.read(base_image.image.path).first

    draw = Magick::Draw.new
    draw.align = Magick::CenterAlign
    draw.annotate(img, 512, 512, 256, 450, caption.text) do
      self.font = 'public/uploads/SimHei.ttf'
      self.pointsize = 48
      self.font_weight = Magick::BoldWeight
      self.fill = 'black'
      self.gravity = Magick::SouthEastGravity
      self.stroke = "white"
    end

    captioned = CaptionedImage.new(user: user)
    tempfile = Tempfile.new(["processed_image", ".gif"])
    img.write(tempfile.path)

    captioned.image = tempfile
    captioned.save!

    tempfile.close
    tempfile.unlink

    return captioned
  end
end