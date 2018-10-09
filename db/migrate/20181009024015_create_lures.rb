class CreateLures < ActiveRecord::Migration[5.2]
  def change
    create_table :lures do |t|
      t.string :type
      t.string :color
      t.float :weight

      t.timestamps
    end
  end
end
