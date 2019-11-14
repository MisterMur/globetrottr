class DeleteStateColumnFromCountry < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :states
  end
end
