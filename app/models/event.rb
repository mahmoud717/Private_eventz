class Event < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :event_attendee, foreign_key: 'event_attended_id'
  has_many :attendees, through: :event_attendee
  scope :past, -> { where('event_date < ?', Date.today).order(event_date: :desc) }
  scope :future, -> { where('event_date >= ?', Date.today).order(:event_date) }
end
