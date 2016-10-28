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
    @category = Category.create(params[:post][:category])
    @region = Region.create(params[:post][:region])
    @wine_brand = WineBrand.create(params[:post][:wine_brand])
    @cheese_brand = CheeseBrand.create(params[:post][:cheese_brand])
    @wine = Wine.create(category_id: @category.id, region_id: @region.id, year: params[:post][:year].to_i, wine_brand_id: @wine_brand.id)
    @cheese = Cheese.create(name: params[:post][:cheese_name], cheese_brand_id: @cheese_brand.id)
    @pairing = Pairing.create(wine_id: @wine.id, cheese_id: @cheese.id)


    @user = current_user
    @poster = @user.poster

    @post = Post.new(poster_id: @poster.id, pairing_id: @pairing.id, title: params[:post][:title], content: params[:post][:content])
    #
    # @poster.user_id = @user.id
    # @poster.save
    # @user.poster = @poster
    # @user.save
    # #we need to associate a user with a poster id and a reviewer id the very minute we CREATE an account
    #
    # @post.poster_id = @poster.id
    # @post.pairing_id = @pairing.id

    byebug
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

  # private
  # def post_params
  #   params.require(:post).permit(:title, :content, :user_id)
  # end
end
