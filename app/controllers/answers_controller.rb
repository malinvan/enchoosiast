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
        if value.to_i <= 3
          answer.value = false
        else
          answer.value = true
        end
        if answer.save
          create_user_trait(answer)
        end
      end
    end

    redirect_to results_path
  end

  def results
    @user_traits = current_user.traits

    # CHARACTERISTICS

  #   @creativity = ""
  #   @flexibility = ""
  #   @sociality = ""
  #   @dominance = ""
  #   @structuredness = ""


  #   #TRAITS

  #   creative = Trait.where(title: "creative")
  #   practical = Trait.where(title: "practical")
  #   flexible = Trait.where(title: "flexible")
  #   inflexible = Trait.where(title: "inflexible")
  #   social = Trait.where(title: "social")
  #   insocial = Trait.where(title: "insocial")
  #   leading = Trait.where(title: "leading")
  #   submissive = Trait.where(title: "submissive")
  #   structured = Trait.where(title: "structured")
  #   impulsive = Trait.where(title: "impulsive")


  #   if @user_traits.include? creative

  end

  private

  def create_user_trait(answer)
    user_trait = UserTrait.new(user: current_user, trait: answer.traits[0])
  end
end
