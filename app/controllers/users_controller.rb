class UsersController < ApplicationController

  def create
    user = User.create(username: params[:username], password: params[:password])
    render json: { id: user.id, username: user.username}
  end

  def update
      user = User.find_by(id: params[:id])
      user.update(username: params[:username])
      render json: { id: user.id, username: user.username, token: token }
  end

  def destroy
      user = User.find_by(id: params[:id])
      user.destroy
      render json: {}, status: :no_content
  end

end
