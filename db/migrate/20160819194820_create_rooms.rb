class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :price
      t.text :description
      t.boolean :home
      t.boolean :dep
      t.boolean :garage
      t.boolean :girls
      t.boolean :boys
      t.boolean :animals
      t.boolean :nanimals
      t.boolean :smoke
      t.boolean :nsmoke
      t.boolean :urgent
      t.boolean :quick
      t.boolean :bathroom
      t.boolean :servinc
      t.text :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
