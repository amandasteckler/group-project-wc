class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create

    @user = current_user
    @poster = @user.poster
    @post = Post.new(poster_id: @poster.id, pairing_id: params[:post][:pairing_id], title: params[:post][:title], content: params[:post][:content])

    if @post.save

      redirect_to user_path(@user)
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

  private
  def post_params
    params.require(:post).permit(:title, :content, :pairing_id)
  end
end
