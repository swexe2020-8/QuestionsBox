class MeetingController < ApplicationController
    def create
        @meeting = Meeting.new(params[:meeting].permit(:qtitle_id, :name, :body))
        @meeting.save
        redirect_to qtitles_show_path(params[:meeting]['qtitle_id'])
    end
end
