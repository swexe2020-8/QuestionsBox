class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.new(qid: params[:question][:qid], uname: params[:question][:uname], posttime: params[:question][:posttime], title: params[:question][:title], text: params[:questions][:text])
    @questions.save
    redirect_to questions_path
  end

  def destroy
    @questions = Question.find(params[:id])
    @questions.destroy
    redirect_to questions_path
  end
end
