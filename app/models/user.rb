class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rooms, :dependent => :destroy
  acts_as_messageable
  mount_uploaders :photos, PhotoUploader

  def name_mail
    return self.name
  end
  
  def mailboxer_email(object)
  email
  end
 
                      
end
