class RemoveServincFromRoom < ActiveRecord::Migration
  def change
    remove_column :rooms, :servinc, :boolean
  end
end
