class ProjectionsCreate < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :description, :text
      t.timestamps
    end
    create_table :photos do |t|
      t.attachment :pic
      t.column :project_id, :integer
      t.timestamps 
    end
  end
end
