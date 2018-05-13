class User < ApplicationRecord
	has_many :books
	has_many :reviews
	has_many :notifications, foreign_key: :recipient_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
