class CaptionedImagesController < ApplicationController
  def new
    @captioned_image = CaptionedImage.new
    @base_image = BaseImage.find(params[:base_image_id])
    @captions = Caption.all
  end

  def preview
    @base_image = BaseImage.find(params[:base_image_id])
    @caption = Caption.find(params[:caption_id])
    @captioned_image = ImageProcessor.caption_image(@base_image, @caption, nil)
  end

  def submit
    redirect_to :root
  end

  def discard
    CaptionedImage.find(param[:id]).destroy!
    redirect_to :base_images
  end

  def show
    @base_image = BaseImage.find(params[:id])
    #@captioned_image = CaptionedImage.find(params[:id])
  end
end
