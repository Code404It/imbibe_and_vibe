class ChangeCollumnName3 < ActiveRecord::Migration
  def change
    rename_column :imbibes, :vibe, :vibe_id
  end
end
