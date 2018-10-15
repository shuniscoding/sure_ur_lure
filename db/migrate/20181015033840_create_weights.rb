class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :milligram

      t.timestamps
    end
  end
end
