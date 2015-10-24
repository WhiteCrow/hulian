class BaseImagesController < ApplicationController
  def index
    @base_images = BaseImage.all
  end

  def create
    binding.pry
  end
end
