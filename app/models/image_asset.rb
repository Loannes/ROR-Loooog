class ImageAsset < ActiveRecord::Base
  mount_uploader :lg, PictureUploader
  mount_uploader :md, PictureUploader
  mount_uploader :sm, PictureUploader
  mount_uploader :xs, PictureUploader
end
