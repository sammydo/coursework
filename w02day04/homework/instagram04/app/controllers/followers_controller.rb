class FollowersController < ApplicationController
  def create

 # loggedin1 = User.find 1
 # user2 = User.find 2
 user = User.find params[:user_id]

 current_user.following.push user


 redirect_to params[:return_to]
  end

  def destroy
  end
end
