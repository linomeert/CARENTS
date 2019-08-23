class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update]

  def index
    @child = Child.all.where(user: current_user)
  end

  def show
    @child = User.find(params[:id])
  end

  def new
    @child = Child.new
  end

  def create

    @child = Child.new(child_params)
    @child.user = current_user
    conditions = params[:child][:condition_ids]
    interests = params[:child][:interest_ids]

    conditions.each do |c_id|
      next unless c_id.present?
      condition = Condition.find(c_id)
      @child.conditions << condition
    end

    interests.each do |i_id|
      next unless i_id.present?
      interest = Interest.find(i_id)
      @child.interests << interest
    end

    if @child.save

      redirect_to user_path(current_user)
    else

      render :new
    end
  end

  def edit

  end

  def update
    @child.update(child_params)
    @child.save
    redirect_to user_path(current_user)
  end

  private

  def set_child
    @child = Child.find(params[:id])
  end

  def child_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:child).permit(:name, :biography, :age, :user, :interest, :condition)
  end

end
