class QuestionsController < ApplicationController
  STOP_MESSAGE = "I am going to work right now!"

  def ask

  end

  def answer
    @ask = params[:ask]

    # if @ask == STOP_MESSAGE || @ask == STOP_MESSAGE.upcase
    if @ask == "What is the time?"
      @answer = Time.now
    elsif @ask.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @ask == "Hello"
      @answer = "Whell hello there"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
