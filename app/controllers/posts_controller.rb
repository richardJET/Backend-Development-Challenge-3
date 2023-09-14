class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
      @post = Post.new(post_params) 

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else

        render :new
      end
    end

  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      redirect_to @post  # Redirect to the updated post
    else
      render 'edit'  # Render the edit post form again with errors
    end
  end

    private

    def post_params
      params.require(:post).permit(:title, :content)
    end

end