class PairingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @pairing = Pairing.new
  end

  def create
    @pairing = Pairing.new(wine_id: params[:pairing][:wine_id], cheese_id: params[:pairing][:cheese_id])

    if @pairing.save
      redirect_to new_post_path
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
