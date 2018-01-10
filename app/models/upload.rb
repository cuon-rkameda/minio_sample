class Upload < ApplicationRecord
  mount_uploader :file, ImageUploader
end
