class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index, :new, :create]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.poster = Poster.create(user_id: @user.id)
      @user.reviewer = Reviewer.create(user_id: @user.id)

      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def edit
    @post = Post.new
    @user = User.find(params[:id])
    if current_user.id == @user.id
    else
      redirect_to edit_user_path(current_user)
    end
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
