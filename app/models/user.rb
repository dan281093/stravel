class User < ApplicationRecord
  has_many :hosted_events, foreign_key: :host_id, class_name: 'Event'
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :attendees
  has_many :events, through: :attendees
end
