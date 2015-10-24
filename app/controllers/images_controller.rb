class ImagesController < ApplicationController
  def show
  end

  def index
    render :index
  end

  def generate
    image_url = "public/uploads/faces/jgz-2.jpeg"
    text = "喂？是120吗？\n我太帅睡不着怎么办？"
    ImageGenerator.generate(image_url, text)
    redirect_to images_path
  end
end
