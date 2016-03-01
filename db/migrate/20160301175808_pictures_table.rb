class PicturesTable < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :pic
      t.belongs_to :item, polymorphic: true

      t.timestamps
    end
    add_index :pictures, [:item_id, :item_type]
  end
end
