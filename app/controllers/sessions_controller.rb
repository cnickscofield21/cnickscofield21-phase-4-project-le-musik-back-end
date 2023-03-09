class SessionsController < ApplicationController
  # FIXME: When line is active, 500 server error occurs
  # skip_before_action :authorized_user, only: [:create]

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts "!!!!!!!!!!!    Authenticated    !!!!!!!!!!!"
      render json: user, status: :ok
    else
      puts "********    Failed    ********"
      render json: {error: "Invalid username and/or password"}, status: :unauthorized
    end

  end

  def destroy
    session.delete :user_id
    puts "####    TARGET DESTROYED    ####"
    head :no_content
  end

end
