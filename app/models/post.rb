class Post < ActiveRecord::Base
  
  belongs_to :user, dependent: :destroy
  
  validates :body, presence: true, length: { maximum: 500 }
  
end
