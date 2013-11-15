class AddActivityShortTitle < ActiveRecord::Migration
  def change
    add_column :activities, :short_title, :string, :limit => 30	
  end
end
