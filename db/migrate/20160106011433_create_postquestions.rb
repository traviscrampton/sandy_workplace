class CreatePostquestions < ActiveRecord::Migration
  def change
    create_table :postquestions do |t|
      t.string :name
      t.string :email
      t.text :message
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
