class HousesController < ApplicationController


  require 'aws-sdk'
  require 'aws-sdk-resources'
  def index
    @houses = House.all
    @users = User.all
  end

  def new
    unless current_user
      redirect_to new_session_path
    else
      @house = House.new
    end
  end

  def show
    @house = House.find(params[:id])
    @name = ''
    @link = ''
  end

  def create
    unless current_user
      redirect_to new_session_path
    end

    @house = House.new(house_params)
    @house.user = current_user

    if @house.save
      flash[:success] = "Your listing was created successfully!"
      redirect_to user_path current_user
    else
      render :new
    end

  end

  def edit
    unless current_user
      redirect_to new_session_path
    else
    @house = House.find(params[:id])
  end
  end

  def update
    unless current_user
      redirect_to new_session_path
    end
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to user_path current_user
  end

  def destroy
    unless current_user
      redirect_to new_session_path
    end
    @house = House.find(params[:id])
    @house.delete
    redirect_to user_path current_user
  end

  private
  def house_params
    params.require(:house).permit(:name, :address, :price, :latitude, :longitude,:picture, :details)
  end

end
