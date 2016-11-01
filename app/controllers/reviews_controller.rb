class ReviewsController < ApplicationController
  def index
  end

  def show
    # @post = Post.find(session[:post_id])
    # @reviews = @post.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @reviewer = current_user.reviewer
    @review = Review.new(title: params[:review][:title], content: params[:review][:content], post_id: session[:post_id], reviewer_id: @reviewer.id)
    @post = Post.find(session[:post_id])
    if @review.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
