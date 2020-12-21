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
    @qtitle = Qtitle.find(params[:id])
    @newmeeting = Meeting.new(:qtitle_id => params[:id]) #書き込み一覧でform_forメソッドを使う、新しいMeetingモデルを生成しておく
    @meetings = Meeting.where(qtitle_id: params[:id])
  end
  
  def delete
    @qtitle = Qtitle.find(params[:id])
    @qtitle.destroy
    redirect_to qtitles_index_path
  end
end
