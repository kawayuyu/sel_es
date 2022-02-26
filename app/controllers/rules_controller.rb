class RulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rule, only: [:edit, :show, :destroy, :update]

  def index
    @rules = current_user.rules.all.order(created_at: :desc)
  end

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(rule_params)
    if @rule.save
      redirect_to rules_path
    else
      render :new
    end
  end

  def destroy
    @rule.destroy
  end

  def edit
  end

  def update
    @rule.update(rule_params)
  end

  def show
  end

  private

  def rule_params
    params.require(:rule).permit(:if_1, :then_1).merge(user_id: current_user.id)
  end

  def set_rule
    @rule = current_user.rules.find(params[:id])
  end
end
