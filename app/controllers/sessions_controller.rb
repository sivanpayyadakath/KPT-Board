class SessionsController < ApplicationController
  before_action :user_login?, only: [:login]

  def sign_in
  end

  def login
  end

  private

  def user_login?
    user = User.find_by(email: params[:email]).try(:authenticate, :password)
    return unless user
    if user
      session = Session.find_by(user: user)
    end
    session
  end

  def get_params
    params.require(:user).permit(:email, :password)
  end
end
