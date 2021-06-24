class Opinion < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :text, presence: true

  scope :most_recent, -> { order(created_at: :desc) }
end
