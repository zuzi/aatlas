class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :abstract
      t.text :detail
      t.integer :category_id
      t.text :note

      t.timestamps
    end
  end
end
