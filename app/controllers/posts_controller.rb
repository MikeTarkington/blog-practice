class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

#sets :post param as required and permits it to have a :title and :body
# rails needs us to say what params to allow
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
