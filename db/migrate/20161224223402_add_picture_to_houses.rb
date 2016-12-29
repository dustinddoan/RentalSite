class AddPictureToHouses < ActiveRecord::Migration
  def up
    add_attachment :houses, :picture
  end

  def down
    remove_attachment :houses, :picture
  end
end
