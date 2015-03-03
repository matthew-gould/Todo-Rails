class ItemsController < ApplicationController
  def new
    @items = Item.new
  end

  def create
    item_params = params[:item]
    @item = Item.new(item_name: item_params[:item_name], item_due: item_params[:item_due],
    item_completed?: item_params[:item_completed?])
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end
end