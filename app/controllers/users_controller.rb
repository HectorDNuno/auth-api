class UsersController < ApplicationController
  def create
    User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    render json: { message: "User created successfully!" }, status: :created
  end

  def show
    user = current_user
    render json: user
  end
end
