class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :category, :name, :nutritional_information
      t.text :description
      t.integer :price
    end
  end
end
