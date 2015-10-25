class VisitorsController < ApplicationController
  def index
    @captioned_images = CaptionedImage.order("created_at DESC")
  end
end
