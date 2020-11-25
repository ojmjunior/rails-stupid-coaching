class QuestionsController < ApplicationController
  # Remember the action view convention
  def ask
    # user_input = params[:question]
  end

  def answer
    @answer = params[:question]

    @coach_response = if @answer[@answer.length - 1] == '?'
                        'Silly question, get dressed and go to work!'
                      elsif @answer == 'I am going to work right now!'
                        'Great!'
                      else
                        "I don't care, get dressed and go to work!"
                      end
  end
  raise
end
