class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable

  mount_uploader :picture, PictureUploader
end
