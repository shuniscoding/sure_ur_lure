class CreateCatches < ActiveRecord::Migration[5.2]
  def change
    create_table :catches do |t|
      t.references :user, foreign_key: true
      t.references :lure, foreign_key: true
      t.references :location, foreign_key: true
      t.references :weather, foreign_key: true
      t.date :catch_date
      t.time :catch_time

      t.timestamps
    end
  end
end
