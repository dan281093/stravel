class Event < ApplicationRecord
  geocoded_by :address
  belongs_to :host, class_name: 'User'
  belongs_to :activity, optional: true
  has_many :attendees, dependent: :destroy
  has_many :users, through: :attendees
  after_validation :geocode, if: :will_save_change_to_address?

  validates :activity, :title, :address, :description, presence: true, if: :active?

  def attendee(user)
    attendees.where(user: user).first
  end
end
