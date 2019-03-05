class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hosted_events, foreign_key: :host_id, class_name: 'Event'

  has_many :user_activities, dependent: :destroy
  has_many :activities, through: :user_activities

  has_many :attendees, dependent: :destroy
  has_many :events, through: :attendees

  mount_uploader :photo, PhotoUploader

  def upcoming_events
    events.where('events.date >= ?', DateTime.now)
  end

  def past_events
    events.where('events.date < ?', DateTime.now)
  end
end
