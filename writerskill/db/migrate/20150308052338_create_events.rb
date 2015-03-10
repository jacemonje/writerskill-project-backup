class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventid
      t.string :name
      t.text :venue
      t.datetime :schedule
      t.string :type
      t.integer :attendance
      t.string :addpoint

      t.timestamps null: false
    end
  end
end
