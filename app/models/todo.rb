class Todo < ApplicationRecord
  validates :content, presence: true
  
  has_many :likes
end
