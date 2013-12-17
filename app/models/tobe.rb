class Tobe < ActiveRecord::Base

belongs_to :user
has_many :journals

mount_uploader :image, ImageUploader
  
end

