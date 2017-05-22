class CoachingController < ApplicationController
  def ask

  end

  def answer
    @question = params[:sport]
    @answer = coach_answer_enhanced(@question)
  end

    # # @sports = sports.select {|r| r[:sport] == @answer }
    # if @question == "I am going to work right now!"
    #   ""
    # elsif @question.end_with?("?")
    #   "Silly question, get dressed and go to work!"
    # else
    #   "I don't care, get dressed and go to work!"
    # end

    private

  def coach_answer(question)
    # TODO: return coach answer to your_message
    if question == "I am going to work right now!"
      ""
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end


  def coach_answer_enhanced(question)
    answer = coach_answer(question)
    # TODO: return coach answer to question, with additional custom rules of yours!
    if question == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif question == question.upcase
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  end
end
