class AnswersController < ApplicationController
  def new
    @questions = Question.all
  end

  def results

  end

  # def create
  #   raise
  # end

  # def create
  #   @question = Question.find
  #   @answer = Answer.new(params[:answer])
  #   @answer.question =
  #   @answer.save
  # end

  # def results
  #   @answers = Answer.all
  # end
end
