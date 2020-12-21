class QtitlesController < ApplicationController
  def index
    @qtitles = Qtitle.all
    @newQtitle = Qtitle.new
  end
  
  
  def create
    @qtitle = Qtitle.new(params[:qtitle].permit(:title))
    @qtitle.save
    redirect_to qtitles_index_path
  end
  
  def show
  end
end
