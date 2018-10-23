class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :main_image, MainImageUploader
end
