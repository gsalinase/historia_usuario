class Post < ApplicationRecord
  validates :title, :image, :content, presence: true
  scope :order_by, -> { order(created_at: :desc) }
end
