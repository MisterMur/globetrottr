class AddSearchColumnToActivityTable < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :search, :string
  end
end
