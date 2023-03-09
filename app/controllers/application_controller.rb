class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  # FIXME: Having these active is breaking things right now

  # When verify_authenticity_token is activated, server
  # returns 500 Internal Server Error for /login route
  # skip_before_action :verify_authenticity_token

  # When this line is active all authorized_user calls
  # returns "Not Authorized". Is it because I cannot properly store cookies in Postman?
  # before_action :authorized_user

  def current_user
    user = User.find_by(id:session[:user_id])
    user
  end

  # def authorized_user
  #   render json: {error: "Not Authorized"}, status: :unauthorized unless current_user
  # end

  # Error Handling
  def render_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

  def render_not_found(error)
    #confiure the response to work with the error handleng we have on the frontend.
    render json: {errors: {error.model => "Not Found"}}, status: :not_found
  end

  # TESTING
  def hello_world
    session[:count] = (session[:count] || 0) + 1
    render json: { count: session[:count] }
  end

end
