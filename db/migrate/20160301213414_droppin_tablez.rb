class DroppinTablez < ActiveRecord::Migration
  def change
    drop_table :contact_forms
    drop_table :postquestions
    drop_table :salequestions
  end
end
