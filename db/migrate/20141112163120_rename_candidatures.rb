class RenameCandidatures < ActiveRecord::Migration
  def change
    rename_table(:candidatures, :applications)
  end
end
