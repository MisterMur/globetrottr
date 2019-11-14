class CreateDestinationActivityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_activity_types do |t|
      t.belongs_to :destination, foreign_key: true
      t.belongs_to :activity_type, foreign_key: true

      t.timestamps
    end
  end
end
