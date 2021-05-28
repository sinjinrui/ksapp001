class BallsController < ApplicationController
  before_action :set_ball, only: [:create, :index]
  def create
       
    if @ball.save
      redirect_to root_path
    else
      render "index"
    end
  end

  def index
    @balls = Ball.all
    
  end

  def edit

  end

  def destroy
    ball = Ball.find(params[:id])
    ball.destroy
    redirect_to root_path
  end

  def update
    ball = Ball.find(params[:id])
    ball.update(size: ball.size + 10)
    redirect_to root_path
  end

  private
  def ball_params
    params.require(:ball).permit(:size)
  end

  def set_ball
    @ball = Ball.new
  end

end
