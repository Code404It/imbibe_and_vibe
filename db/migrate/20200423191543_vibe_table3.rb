class VibeTable3 < ActiveRecord::Migration
  def change
    create_table :vibes do |t|
      t.string :song
      t.string :artist
      
      t.timestamps
    end 
  end
end
