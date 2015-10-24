class ImagesController < ApplicationController
  def show
  end

  def index
  end

  def generate
    image_url = "public/uploads/faces/jgz.jpg"
    text = "喂？是120吗？\n我太帅了睡不着怎么办？"
    image_bit = ImageGenerator.generate(image_url, text)
    render :index
  end
end
