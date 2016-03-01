class OneInquiry < ActiveRecord::Migration
  def change
    create_table :itemquestions do |t|
      t.belongs_to :item, polymorphic: true
      t.column :name, :string
      t.column :email, :string
      t.column :message, :text

      t.timestamps
    end
    add_index :itemquestions, [:item_id, :item_type]
  end
end
