class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :microposts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true

  has_many :followers, foreign_key: :user_id, class_name: :User
  has_many :following, foreign_key: :user_id, class_name: :User

end
