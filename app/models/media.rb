class Media < ActiveRecord::Base
  belongs_to :downloadable

  mount_uploader :image, ImageUploader
end
