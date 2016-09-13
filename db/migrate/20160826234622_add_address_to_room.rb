class AddAddressToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :address, :string
  end
end
