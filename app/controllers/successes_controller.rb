class SuccessesController < ApplicationController
  before_action :authenticate_user!

  def index
    @successes = current_user.successes.all.order(created_at: :desc)
  end

  def new
    @success = Success.new
  end

  def create
    @success = Success.new(success_params)
    if @success.save
      redirect_to successes_path
    else
      render :new
    end
  end

  def destroy
    @success = current_user.successes.find(params[:id])
    @success.destroy
  end

  private

  def success_params
    params.require(:success).permit(:post).merge(user_id: current_user.id)
  end
end
