class RemoveImageFromRooms < ActiveRecord::Migration
  def change
  	remove_column :rooms, :image
  end
end
