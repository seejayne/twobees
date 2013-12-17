class Category < ActiveRecord::Base
	has_many :tobes

  def recent_classifieds
    classifieds.limit(5).order('created_at DESC')
  end
end
