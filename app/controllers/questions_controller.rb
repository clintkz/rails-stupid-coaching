class QuestionsController < ApplicationController
  STOP_MESSAGE = "I am going to work right now!"

  def ask

  end

  def answer
    @ask = params[:ask]

    if @ask == STOP_MESSAGE || @ask == STOP_MESSAGE.upcase
      @answer = "Great!"
    elsif @ask.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
