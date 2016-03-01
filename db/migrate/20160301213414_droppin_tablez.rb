class DroppinTablez < ActiveRecord::Migration
  def change
    drop_table :postquestions
    drop_table :salequestions
  end
end
