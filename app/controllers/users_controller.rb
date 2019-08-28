class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
      @user = User.create(user_params)
     if @user.valid?
        @token = encode_token({ user_id: @user.id })

        #upon user creation, 12 months will be automatically created as well per user.
        #First month starts on date of creation.
        
        monthKey = {
          1 => 'January',
          2 => 'February',
          3 => 'March',
          4 => 'April',
          5 => 'May',
          6 => 'June',
          7 => 'July',
          8 => 'August',
          9 => 'September',
          10 => 'October',
          11 => 'November',
          12 => 'December'
        }

        userMonth = @user.created_at.month
        year=2019
        counter = 1
        lastMonth = 13

        while counter < lastMonth
          MonthlyBudget.create( name: monthKey[userMonth], year: year, user_id: @user.id )
          if userMonth == 12
            userMonth = 1
            year += 1
          else
            userMonth += 1
          end
          counter += 1
        end

        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    private

    def user_params
      params.require(:user).permit(:username, :password)
    end
end
