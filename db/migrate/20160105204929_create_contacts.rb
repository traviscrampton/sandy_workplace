class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :message
      t.string :subject
      t.string :email

      t.timestamps null: false
    end
  end
end
