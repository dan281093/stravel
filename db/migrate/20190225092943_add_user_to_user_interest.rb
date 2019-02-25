class AddUserToUserInterest < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_interests, :user, foreign_key: true
  end
end
