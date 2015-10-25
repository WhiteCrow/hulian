class CaptionedImagesController < ApplicationController
  def new
    @captioned_image = CaptionedImage.new
    @base_image = BaseImage.find(params[:base_image_id])
    @captions = Caption.all
  end
end
