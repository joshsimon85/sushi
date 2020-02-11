class ChangeNutritionalInformationTypeToJson < ActiveRecord::Migration[6.0]
  def change
    change_column :menu_items, :nutritional_information, 'json USING CAST(nutritional_information AS json)'
  end
end
