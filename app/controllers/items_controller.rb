class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    list = List.find_or_create_by(list_name: params[:item][:list])
   @item =list.items.new(item_name: params[:item][:item_name])
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def index
    @items = Item.all
  end
end