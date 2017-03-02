class Work < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: { maximum: 50 }
  validates :contents, length: { maximum: 500 }

end
