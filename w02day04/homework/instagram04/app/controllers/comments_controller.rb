class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)

 #get user#we will get this from the loged in user
 #get picture
 #load all the picturess
 user = User.find 1
  picture = Picture.find params[:picture_id]
  comment.picture = picture
  comment.user = user
  comment.save
 #redrect_tp pictures/pICTUREid

#Rails maguc to take us
    redirect_to picture
  end


  private
    def comment_params
      params.require(:comment).permit(:body)

    end
end
