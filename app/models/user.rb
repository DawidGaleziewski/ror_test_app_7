class User < ApplicationRecord
  has_many :posts
 
  validates :username, presence: true, length: {minimum: 2 , maximum: 10}
  
  VALID_REGEX_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_senstive: false}, format: {with: VALID_REGEX_FORMAT}
  
  has_secure_password
end