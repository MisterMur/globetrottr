class AddCountryIdToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :country_id, :integer
  end
end
