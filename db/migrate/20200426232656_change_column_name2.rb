class ChangeColumnName2 < ActiveRecord::Migration
  def change
    rename_column :imbibes, :vibe_id, :vibe
  end
end
