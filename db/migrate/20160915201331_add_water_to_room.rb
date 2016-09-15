class AddWaterToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :water, :boolean
  end
end
