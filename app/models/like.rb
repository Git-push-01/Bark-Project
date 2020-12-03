class Like < ApplicationRecord
  belongs_to :dog, :counter_cache => true
  belongs_to :user
  # one like per Dog
  validates :user_id, uniqueness: { scope: [:dog_id] }
end
