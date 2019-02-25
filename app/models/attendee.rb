class Attendee < ApplicationRecord
  belongs_to :user
  belongs_to :event
  # add validation uniqueness with scope
end
