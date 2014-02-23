class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :latin
      t.integer :height
      t.integer :width
      t.string :color
      t.integer :bloom1
      t.integer :bloom2
      t.string :conditions
      t.string :picture

      t.timestamps
    end
  end
end
