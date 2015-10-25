class CaptionedImagesController < ApplicationController
  def new
    @captioned_image = CaptionedImage.new
    @base_image = BaseImage.find(params[:base_image_id])
    @captions = Caption.all
  end

  def show
    @base_image = BaseImage.find(params[:id])
    #@captioned_image = CaptionedImage.find(params[:id])
  end
end
