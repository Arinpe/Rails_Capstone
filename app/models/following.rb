class Following < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'

  scope :most_recent, -> { order(created_at: :desc) }
end
