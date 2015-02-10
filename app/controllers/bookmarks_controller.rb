class BookmarksController < ApplicationController
  

  
  
  def create
    @topic = Topic.find(params[:topic_id])
    @bookmark = current_user.bookmarks.new(bookmark_params)
    @bookmark.topic = @topic
    @new_bookmark = Bookmark.new
    if @bookmark.save
      redirect_to @topic
    else
      redirect_to @topic
    end
  end
  
  def destroy
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to @topic
    else
      redirect_to @topic
    end
  end
  
  private
  
  def bookmark_params
    (params.require(:bookmark).permit(:link, :topic_id))
  end
   
end
