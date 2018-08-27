class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :author, presence: true
  validates :description, presence: true, length: { minimum: 2, maximum: 100}
  
  validates :user_id, presence: true
end
