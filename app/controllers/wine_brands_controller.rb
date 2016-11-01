class WineBrandsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @wine_brand = WineBrand.new
  end

  def create
    @wine_brand = WineBrand.new(company: params[:wine_brand][:company], name: params[:wine_brand][:name])

    if @wine_brand.save
      redirect_to new_wine_path
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
