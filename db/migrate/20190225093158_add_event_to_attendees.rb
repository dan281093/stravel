class AddEventToAttendees < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendees, :event, foreign_key: true
  end
end
