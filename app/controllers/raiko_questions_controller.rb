class RaikoQuestionsController < ApplicationController
skip_before_filter :authorize
  # GET /raiko_questions
  # GET /raiko_questions.json
  def index
    @raiko_question = RaikoQuestion.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @raiko_question }
    end
  end

  def answer

case @raiko_question
when "aaa"
  @raiko_answer = "あああ"
end

  end
  # GET /raiko_questions/1
  # GET /raiko_questions/1.json
 # def show
  #  @raiko_question = RaikoQuestion.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.json { render json: @raiko_question }
    #end
  #end

  # GET /raiko_questions/new
  # GET /raiko_questions/new.json
  def new
    @raiko_question = RaikoQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raiko_question }
    end
  end

  # GET /raiko_questions/1/edit
  def edit
    @raiko_question = RaikoQuestion.find(params[:id])
  end

  # POST /raiko_questions
  # POST /raiko_questions.json
  def create
    @raiko_question = RaikoQuestion.new(params[:raiko_question])

    respond_to do |format|
      if @raiko_question.save
        format.html { redirect_to @raiko_question, notice: 'Raiko question was successfully created.' }
        format.json { render json: @raiko_question, status: :created, location: @raiko_question }
      else
        format.html { render action: "new" }
        format.json { render json: @raiko_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /raiko_questions/1
  # PUT /raiko_questions/1.json
  def update
    @raiko_question = RaikoQuestion.find(params[:id])

    respond_to do |format|
      if @raiko_question.update_attributes(params[:raiko_question])
        format.html { redirect_to @raiko_question, notice: 'Raiko question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raiko_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raiko_questions/1
  # DELETE /raiko_questions/1.json
  def destroy
    @raiko_question = RaikoQuestion.find(params[:id])
    @raiko_question.destroy

    respond_to do |format|
      format.html { redirect_to raiko_questions_url }
      format.json { head :no_content }
    end
  end
end
