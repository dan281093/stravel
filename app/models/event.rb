class Event < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_many :attendees
end
