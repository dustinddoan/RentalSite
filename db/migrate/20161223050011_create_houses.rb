class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.float :price
      t.float :latitude
      t.float :longitude
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
