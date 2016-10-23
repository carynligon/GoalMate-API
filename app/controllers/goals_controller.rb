class GoalsController < ApplicationController
	 # before_action :set_user
  def index
    @goals = Goal.all
    render json: @goals
  end

  def show
    @goal = Goal.find(params[:id])
    render json: @goal
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      render json: @goal
    else
      puts "Error!" 
    end
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)

    if @goal.save
      render json: @goal 
    else
       puts "Error!"
    end
  end
	
	def destroy
		@goal = Goal.find(params[:id])
    @goal.destroy
	end

	private
  def goal_params
    params.require(:goal).permit(:name, :description)
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end
end