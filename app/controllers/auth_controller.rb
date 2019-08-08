class AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = JWT.encode({id: user.id}, 'app_secret', 'HS256')
      render json: { id: user.id, username: user.username, token: token}
    else
      render json: { error: 'Not Authorized'}, status: 401
    end
  end

  def show
    jwt_token = request.headers[:Authorization]
    decode_token = JWT.decode(jwt_token, 'app_secret', true, { algorithm: 'HS256' })

    id = decode_token.first['id']
    user = User.find(id)

    output = { id: user.id, username: user.username, token: jwt_token }

    if user
      render json: output
    else
      render json: { error: 'Not Authorized'}, status: 401
    end
  end

end
