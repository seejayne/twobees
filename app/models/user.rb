class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tobes  
  has_many :journals    

  after_create :send_welcome_email #active record callbacks

   def send_welcome_email
  	UserMailer.welcome_email(self).deliver
  end
    
end
