class AnswersController < ApplicationController
  def new
    @questions = Question.all
  end

  def create
    questions = Question.all
    questions.each do |question|
      value = params["question-#{question.id}"]
      unless value.nil?
        answer = Answer.new(question: question, user: current_user)
        if value <= 3
          answer.value = false
        else
          answer.value = true
        end
        answer.save
      end
    end
    redirect_to results_path
  end
end
