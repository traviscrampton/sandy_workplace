class CreateSalequestions < ActiveRecord::Migration
  def change
    create_table :salequestions do |t|
      t.string :name
      t.string :email
      t.integer :sale_id
      t.text :message

      t.timestamps null: false
    end
  end
end
