class AddIndexes < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :user_id
    add_index :event_attendees, :attendee_id
    add_index :event_attendees, :event_attended_id
  end
end
