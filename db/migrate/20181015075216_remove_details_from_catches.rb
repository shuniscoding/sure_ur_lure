class RemoveDetailsFromCatches < ActiveRecord::Migration[5.2]
  def change
    remove_reference :catches, :location, foreign_key: true
    remove_reference :catches, :weather, foreign_key: true
    remove_column :catches, :catch_date, :date
    remove_column :catches, :catch_time, :time
  end
end
