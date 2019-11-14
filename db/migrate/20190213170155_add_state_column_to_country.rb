class AddStateColumnToCountry < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :states,:string

  end
end
