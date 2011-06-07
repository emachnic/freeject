class User < ActiveRecord::Base
  # Validations
  validates :username, :presence => true, :uniqueness => true
  
  # Include default devise modules. Others available are:
  # :encryptable, :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
end
