class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rooms

  acts_as_messageable :table_name => "table_with_messages", # default 'messages'
                      :required   => :body                  # default [:topic, :body]
                      :class_name => "CustomMessages"       # default "ActsAsMessageable::Message",
                      :dependent  => :destroy               # default :nullify
                      :group_messages => true               # default false
  acts_as_messageable :required => :body
end
