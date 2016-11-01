class CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create

    @category = Category.new(name: params[:category][:name])

    if @category.save
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
