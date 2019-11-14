class ChangeColumnsInDestinationTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :destinations, :country_id, :state_id
  end
end
