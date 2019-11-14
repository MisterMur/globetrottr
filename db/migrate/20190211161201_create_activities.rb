class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.belongs_to :activity_type, foreign_key: true
      t.string :name
      t.string :age_category
      t.datetime :time_spent
      t.string :address

      t.timestamps
    end
  end
end
