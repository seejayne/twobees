class Tobe < ActiveRecord::Base

belongs_to :user
belongs_to :category

has_many :journals

mount_uploader :image, ImageUploader
  
end

