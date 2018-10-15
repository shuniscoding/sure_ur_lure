class RemoveDetailsFromLures < ActiveRecord::Migration[5.2]
  def change
    remove_column :lures, :type, :string
    remove_column :lures, :color, :string
    remove_column :lures, :weight, :float
  end
end
