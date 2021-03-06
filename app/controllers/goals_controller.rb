class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @goals = Goal.all.order("created_at DESC").paginate(:page => params[:page])
=======
  # before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @goals = Goal.all.order("created_at DESC")
>>>>>>> f473f23384e57d5168bc5222ed0e0cbdc0f77ba8
  end

  def show
  end

  def new
    @goal = current_user.goals.build
  end

  def edit
  end

  def create
    @goal = current_user.goals.build(goal_params)

    if @goal.save
      redirect_to @goal, notice: 'Your golio was successfully created!'
    else
      render :new
    end
  end

  def update
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Your golio was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_url
  end

  def all_goals
    @goals = Goal.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 16)
  end

    private
      def set_goal
        @goal = Goal.find_by(id: params[:id])
      end

      def correct_user
        @goal = current_user.goals.find_by(id: params[:id])
        redirect_to goals_path, notice: "Not authorized to view that page." if @goal.nil?
       end

      def goal_params
        params.require(:goal).permit(:title, :description, :picture, :location)
      end
end
