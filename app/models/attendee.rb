class Attendee < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum status: %i[pending accepted declined]

  validates :event, uniqueness: { scope: :user }
end
