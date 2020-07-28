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

    @creativity = ""
    @flexibility = ""
    @sociality = ""
    @dominance = ""
    @structuredness = ""

    # TRAITS

    creative = Trait.where(title: "creative")[0]
    practical = Trait.where(title: "practical")[0]
    flexible = Trait.where(title: "flexible")[0]
    inflexible = Trait.where(title: "inflexible")[0]
    social = Trait.where(title: "social")[0]
    insocial = Trait.where(title: "insocial")[0]
    leading = Trait.where(title: "leading")[0]
    submissive = Trait.where(title: "submissive")[0]
    structured = Trait.where(title: "structured")[0]
    impulsive = Trait.where(title: "impulsive")[0]
    # CREATIVITY
    if @user_traits.include? creative
      @creativity = "You are a very creative mind!"
    elsif @user_traits.include? practical
      @creativity = "You are a rather practical person."
    else
      @creativity = "Unfortunately, you did not answer the questions about creativity..."
    end

    # FLEXIBILTY
    if @user_traits.include? flexible
      @flexibility = "Flexibility is your strength!"
    elsif @user_traits.include? inflexible
      @flexibility = "You prefer a familiar environment."
    else
      @flexibility = "Unfortunately, you did not answer the questions about flexibility..."
    end

    # SOCIALITY
    if @user_traits.include? social
      @sociality = "You have a social character and should work in interactive teams."
    elsif @user_traits.include? insocial
      @sociality = "You do your best work when working on your own. Focus is important to you."
    else
      @sociality = "Unfortunately, you did not answer the questions about your social preference..."
    end

    # DOMINANCE
    if @user_traits.include? leading
      @dominance = "You are a born leader!"
    elsif @user_traits.include? submissive
      @dominance = "You diligently follow orders. You prefer not carrry responsibility for other workers."
    else
      @dominance = "Unfortunately, you did not answer the questions about leadership..."
    end

    # STRUCTUREDNESS
    if @user_traits.include? structured
      @structuredness = "You are a structured problem solver!"
    elsif @user_traits.include? impulsive
      @structuredness= "You approach problems impulsively and trust your gut."
    else
      @structuredness = "Unfortunately, you did not answer the questions about structrued thinking..."
    end
  end

  private

  def create_user_trait(answer)
    user_trait = UserTrait.create(user: current_user, trait: answer.traits[0])
  end
end
