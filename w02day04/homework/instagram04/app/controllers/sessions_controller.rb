class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new , :create, :destroy]

def new
  render :login

end
  def create
    email = sessions_params[:email]
    password = sessions_params[:password]

    # check to see if there is a user with the given email
    user = User.find_by ({email: email , password: password})

    if user
      # log the user in
      session[:user_id] = user.id
      redirect_to :pictures
    else
      # inccorect information
      session[:message] = "incorrect login"
      redirect_to new_session_path
    end
  end


  def destroy
    session[:user_id] = false


    redirect_to new_session_path
  end

  private
  def sessions_params
    params.require(:session).permit(:email, :password)
  end
end
