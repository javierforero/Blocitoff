class AddTitleToLists < ActiveRecord::Migration
  def change
    add_column :lists, :title, :text 
  end
end
