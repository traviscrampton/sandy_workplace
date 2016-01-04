class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :material, :text
      t.column :price, :integer
      t.timestamps
    end
    create_table :images do |t|
      t.attachment :pic
      t.column :sale_id, :integer
      t.timestamps
    end
  end
end
