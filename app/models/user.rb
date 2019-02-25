class User < ApplicationRecord
  has_many :events
  has_many :user_interests
  has_many :attendees
end
