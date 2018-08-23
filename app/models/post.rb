class Post < ApplicationRecord
  
  validates :title, presence: true
  validates :author, presence: true
  validates :description, presence: true, length: { minimum: 2, maximum: 100}
  
end
