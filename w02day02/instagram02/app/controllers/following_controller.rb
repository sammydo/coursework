class FollowingController < ApplicationController
    def create

   user1 = User.find 1
   user2 = User.find 2
   picture = Picture.find params[:picture_id]

   user1.following.push user2
   
  #Rails maguc to take us
      redirect_to picture
    end

end
