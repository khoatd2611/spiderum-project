class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable,:recoverable, :rememberable, :validatable
  devise :database_authenticatable
  has_many :posts
end
