class DeleteColumnFromTripTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :mode
  end
end
