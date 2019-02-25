class CreateUserInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_interests do |t|
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end