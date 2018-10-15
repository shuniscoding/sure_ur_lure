class AddDetailsToLures < ActiveRecord::Migration[5.2]
  def change
    add_reference :lures, :color, foreign_key: true
    add_reference :lures, :weight, foreign_key: true
    add_reference :lures, :location, foreign_key: true
    add_reference :lures, :weather, foreign_key: true
  end
end
