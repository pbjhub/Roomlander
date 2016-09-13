class AddImageToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :images, :json
  end
end
