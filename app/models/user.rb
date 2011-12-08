class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  after_create :send_registration_confirmation_email
  
  def send_registration_confirmation_email
    @user = User.find_by_id self.id
    UserMailer.registration_confirmation(@user).deliver
  end
end
