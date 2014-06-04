class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :posts

  attr_accessor :username
  validates :username, :presence => :true, :length => { maximum: 40, minimum: 6 }
  
  before_save do
    @username = @user.downcase if @user
  end
end