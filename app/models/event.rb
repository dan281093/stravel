class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  belongs_to :activity
  has_many :attendees
  has_many :users, through: :attendees
end
