class QuestionsController < ApplicationController
  def ask
  end

  def answer
    case params[:question]
    when 'I am going to work'
      @response = 'Great!'
    when /.*\?/
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
