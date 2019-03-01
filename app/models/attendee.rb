class Attendee < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user, uniqueness: true
  validates :status, inclusion: { in: [ "pending", "accepted", "declined"] }

  # add validation uniqueness with scope
end
