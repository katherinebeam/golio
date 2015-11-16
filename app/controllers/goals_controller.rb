class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @goals = Goal.all
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
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render :new
    end
  end

  def update
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_url
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
