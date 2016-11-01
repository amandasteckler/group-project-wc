class WinesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_brand_id: params[:wine][:wine_brand_id], region_id: params[:wine][:region_id], category_id: params[:wine][:category_id], year: params[:wine][:year])

    if @wine.save
      redirect_to new_pairing_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
