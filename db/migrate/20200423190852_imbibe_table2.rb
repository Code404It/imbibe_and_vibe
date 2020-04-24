class ImbibeTable2 < ActiveRecord::Migration
  def change
    create_table :imbibes do |t|
      t.integer :user_id
      t.integer :song_id
      t.string  :drink
      t.string  :toast_headline
      t.text    :toast_body
      
      t.timestamps
    end 
  end
end
