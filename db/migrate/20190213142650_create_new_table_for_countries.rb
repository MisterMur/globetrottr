class CreateNewTableForCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
    end
  end
end
