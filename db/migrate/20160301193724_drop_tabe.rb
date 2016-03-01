class DropTabe < ActiveRecord::Migration
  def change
    drop_table :photos
    drop_table :images
  end
end
