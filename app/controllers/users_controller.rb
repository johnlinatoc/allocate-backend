class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    render json: User.all, status: :accepted
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
  
  def create
    @user = User.create(user_params)

    if @user.valid?
      @user.addMonths

      @token = encode_token({ user_id: @user.id })

      render json: {
               user: UserSerializer.new(@user),
               jwt: @token
             },
             status: :created
    else
      render json: { error: 'Failed to create user' }, status: :not_acceptable
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    p params
    if @user
      @user.destroy

      render json: {
               message: 'Successfully deleted user account.'
             },
             status: :accepted
    else
      render json: { error: 'Invalid request' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
