class BaseImagesController < ApplicationController
  def index
    @base_images = BaseImage.all.order('created_at DESC')
  end

  def create
    @base_image = BaseImage.create!(image: params[:file])
    render :text => :success
  end

  def show
    @base_image = BaseImage.find(params[:id])
  end
end
