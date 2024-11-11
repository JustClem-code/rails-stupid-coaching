class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_response = ""
    @user_question = params[:question]
    if params[:question]
      if @user_question == "I am going to work"
        @coach_response = " Great"
      elsif @user_question.end_with?("?")
        @coach_response = "Silly question, get dressed and go to work!."
      else
        @coach_response = "I don't care, get dressed and go to work!"
      end
    end
  end
end
