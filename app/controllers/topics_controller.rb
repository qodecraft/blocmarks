class TopicsController < ApplicationController
   
  def index
    @topics = Topic.all
  end
  
  def show
    @topic = Topic.find(params[:id])
    @bookmarks = @topic.bookmarks
  end

  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.build(topic_params)
    if @topic.save
      redirect_to @topic
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end
  
  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(topic_params)
      redirect_to @topic
    else
      render :edit
    end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    if @topic.destroy
      redirect to 'topic#index'
    else
      redirect_to @topic
    end
  end
  
  private
  
  def topic_params
    (params.require(:topic).permit(:name))
  end
  

end
