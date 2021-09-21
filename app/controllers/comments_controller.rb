class CommentsController < ApplicationController

def create
   @post = Post.find(params[:post_id])
  @comment= @post.comments.create(comment_params)
  #@comment= @post.comments.build(comment_params)
   @comment.user_id = current_user.id
   
   if @comment.save
      redirect_to @post
  else
    redirect_to @post, notice: "did not save!"
  end
end  

def destroy
end



private





 def comment_params
   #params.require(:comment).permit(:comment, :user_id)
   params.require(:comment).permit(:comment)
 end
end
