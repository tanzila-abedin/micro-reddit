class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment, presence: { message: 'must be given' },
                      length: { maximum: 8000, message: 'must be less than 50 charcaters' }
end
