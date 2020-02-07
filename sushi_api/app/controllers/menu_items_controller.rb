class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    json_response(@menu_items)
  end
end
