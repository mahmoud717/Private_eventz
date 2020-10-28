class User < ApplicationRecord
    has_many :events, class_name: "Event", foreign_key: "user_id"
    has_many :event_attendee, foreign_key: 'attendee_id'
    has_many :event_attended, through: :event_attendee
    
end
