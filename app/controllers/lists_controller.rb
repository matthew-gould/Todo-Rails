class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list_params = params[:list]
    @list = List.new list_name: list_params[:list_name]
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find params[:id]
  end

  def index
    @lists = List.all
  end
end