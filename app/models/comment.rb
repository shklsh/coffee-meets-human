class Comment < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :comment, presence: true, length: { minimum: 3, maximum: 100 }
  validates :post_id, presence: true
  
  belongs_to :user
  belongs_to :post
end
