class Event < ApplicationRecord
  geocoded_by :address
  belongs_to :host, class_name: 'User'
  belongs_to :activity
  has_many :attendees
  has_many :users, through: :attendees
  after_validation :geocode, if: :will_save_change_to_address?
end
