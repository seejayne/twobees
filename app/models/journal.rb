class Journal < ActiveRecord::Base
  belongs_to :user
  belongs_to :tobe

  
end
