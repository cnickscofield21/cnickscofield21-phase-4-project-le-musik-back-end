class SessionsController < ApplicationController
  # TODO: When line is active, 500 server error occurs.
  # Seems to have balanced out???
  # skip_before_action :authorized_user, only: [:create]

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      render json: {error: "Invalid username and/or password"}, status: :unauthorized
    end

  end

  def destroy
    session.delete :user_id
    head :no_content
  end

end
