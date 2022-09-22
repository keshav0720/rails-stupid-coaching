class QuestionsController < ApplicationController
  def ask; end

  def answer
    ques = params[:answer]
    response = if ques == 'I am going to work'
                 'Great!'
               elsif ques[-1] == '?'
                 'Silly question, get dressed and go to work!'
               else
                 "I don't care, get dressed and go to work"
               end
    @answer = response
  end
end
