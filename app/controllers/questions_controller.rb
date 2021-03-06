class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
    respond_with @questions
  end

  def show
    @question = Question.find(params[:id])
    respond_with @question
  end

  def create
    @question = Question.new(question_params)
    @question.save
    respond_with @question
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_with @question
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end