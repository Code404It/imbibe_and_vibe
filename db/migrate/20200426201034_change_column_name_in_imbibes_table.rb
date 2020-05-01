class ChangeColumnNameInImbibesTable < ActiveRecord::Migration
  def change
    rename_column :imbibes, :song_id, :vibe_id
  end
end
