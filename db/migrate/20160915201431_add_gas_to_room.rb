class AddGasToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :gas, :boolean
  end
end
