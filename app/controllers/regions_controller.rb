class RegionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(name: params[:region][:name])

    if @region.save
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
