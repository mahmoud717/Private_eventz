class CreateEventAttendee < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
      t.integer :attendee_id
      t.integer :event_attended_id
    end
  end
end
