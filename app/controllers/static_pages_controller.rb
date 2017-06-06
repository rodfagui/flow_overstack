class StaticPagesController < ApplicationController
  def home
  	@all_questions = Question.all.paginate(page: params[:page])
  end
end
