class Api::UsersController < ApplicationController
  # before_action :authenticate_user

  def index 
    # if current_user
      # @users = User.where(id: current_user.id) 
      # FirstJobJob.perform_later
      @users = User.all
      render 'index.json.jbuilder'
    # else 
      # render json: { message: "Please log in to view this information" }
    # end 
  end 

  def show 
    if current_user 
      @user = User.find(params[:id])
      render "show.json.jbuilder"
    else 
      render json: { message: "Please log in to view this information" }
    end 
  end 

  def update 
    @user = User.find(params[:id]) 
    
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email 
    @user.phone_number = params[:phone_number] || @user.phone_number
    @usser.avatar.attach(params[:avatar]) || @user.avatar

    if @user.save 
      render 'show.json.jbuilder'
    else 
      render json: { errors: @user.errors.full_messages }
    end
  end 

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email],
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      avatar: params[:avatar]
    )

    if @user.save 
      SignUpMailer.creation(@user).deliver_now
      render 'show.json.jbuilder'
    else 
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end 
  end

  def delete 
    @user = User.find(params[:id])
    @user.delete 
    render json: { message: "Deleted" }
  end  

  private 
  def user_params 
    params.require(:user).permit(:first_name, :last_name, :email, :avatar)
  end 
end
