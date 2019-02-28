class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :hosted_events, foreign_key: :host_id, class_name: 'Event'
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :attendees
  has_many :events, through: :attendees
  mount_uploader :photo, PhotoUploader
end
