class AddTimestampsToMenuItem < ActiveRecord::Migration[6.0]
  def change
    add_column :menu_items, :created_at, :datetime, null: false
    add_column :menu_items, :updated_at, :datetime, null: false
  end
end
