class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :host_id
      t.references :activity, foreign_key: true

      t.timestamps
    end

    add_index :events, :host_id
  end
end
