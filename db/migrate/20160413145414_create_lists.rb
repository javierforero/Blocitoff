class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :description
      t.boolean :complete_flag, default: false

      t.timestamps null: false
    end
  end
end
