class User < ApplicationRecord
  has_many :events, class_name: 'Event', foreign_key: 'user_id'
  has_many :event_attendee, foreign_key: 'attendee_id'
  has_many :event_attended, through: :event_attendee
  scope :past, -> { where('event_date < ?', Date.today).order(event_date: :desc) }
  scope :future, -> { where('event_date >= ?', Date.today).order(:event_date) }
end
