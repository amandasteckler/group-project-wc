class CheesesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cheese = Cheese.new
  end

  def create
    @cheese = Cheese.new(name: params[:cheese][:name], cheese_brand_id: params[:cheese][:cheese_brand_id])

    if @cheese.save
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
