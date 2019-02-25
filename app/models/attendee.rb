class Attendee < ApplicationRecord
  has_many :users
  belongs_to :events
end
