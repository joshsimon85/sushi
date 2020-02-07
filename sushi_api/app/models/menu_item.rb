class MenuItem < ActiveRecord::Base
  validates_presence_of :category, :name, :nutritional_information,
                        :description, :price
end
