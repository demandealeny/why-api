require 'pp'
class AnswersController < ApplicationController

  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  authorize_resource
  before_action :set_question, except: [:user]

  def user
    @questions = Question.user_answers current_user.id
  end

  # GET /answers
  # GET /answers.json
  def index
    UserViewQuestion.add_view @question, current_user if user_signed_in?
    pp @question.user_view_question.count
    @answers = @question.answers
    @answer = Answer.new
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_answers_path(@question), notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { redirect_to question_answers_path(@question), alert: 'Answer was not created.' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to answers_user_path, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_user_path, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_question
      @question = Question.find(params[:question_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params[:answer].permit(:content, :question_id, :user_id)
    end
end
