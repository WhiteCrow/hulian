class BaseImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
