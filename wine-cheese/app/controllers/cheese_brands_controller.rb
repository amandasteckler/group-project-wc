class CheeseBrandsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cheese_brand = CheeseBrand.new
  end

  def create
    @cheese_brand = CheeseBrand.new(name: params[:cheese_brand][:name])

    if @cheese_brand.save
      redirect_to new_cheese_path
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
