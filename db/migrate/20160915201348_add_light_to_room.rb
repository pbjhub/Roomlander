class AddLightToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :light, :boolean
  end
end
