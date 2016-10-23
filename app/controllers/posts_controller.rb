class PostsController < ApplicationController
	 # before_action :set_user
	def index
		@posts = Post.all
		render json: @posts
	end

  def show
    @posts = Goal.posts.find(params[:goal_id])
    render json: @posts
  end

  def create
    @user = current_user
    @post = Goal.posts.new(post_params, user:@user)
    if @goal.save
      render json: @post
    else
      puts "Error!" 
    end
  end

  def update
    @post = Goal.posts.find(params[:id])
    @post.update(post_params)

    if @post.save
      render json: @post 
    else
       puts "Error!"
    end
  end
	
	def destroy
		@post = Goal.posts.find(params[:id])
    @post.destroy
	end

	private
  def post_params
    params.require(:post).permit(:type, :content)
  end

  def set_user
    @user = current_user
  end
end