class UsersController < ApplicationController

  # before_action :authorize, only: [:show]

  def index
    @users = User.all
  end

  def show
    current_user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      current_user = @user
      flash[:success] = "Welcome to RentalSite! Your account was created successfully!"
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
