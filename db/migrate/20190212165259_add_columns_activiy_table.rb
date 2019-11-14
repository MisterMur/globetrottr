class AddColumnsActiviyTable < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :rating, :float
    add_column :activities, :price_level, :integer
    add_column :activities, :photo_url, :string


    remove_column :activities, :time_spent
    remove_column :activities, :age_category
  end
end
