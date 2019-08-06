class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

  def new
    @survey = Survey.find(params[:album_id])
    @question = @survey.questions.new
    render :new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

   private
    def question_params
      params.require(:question).permit(:question, :survey_id)
    end

end
