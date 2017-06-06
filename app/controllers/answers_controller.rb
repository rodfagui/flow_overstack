class AnswersController < ApplicationController
	before_action :logged_in_user, only: [:create]

	def create
		@question = Question.find(params[:question_id])
	  @question.answers.create(answers_params)

	  redirect_to @question
	end
	
  private
    def answers_params
      params.require(:answer).permit(:content).merge(user: current_user)
    end
end
