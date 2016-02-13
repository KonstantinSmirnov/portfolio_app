class Admin::QuestionsController < AdminApplicationController

def new
    @question = Question.new
  end

  def create
    @poll = Poll.find(params[:poll_id])

    respond_to do |format|
      if @poll.questions << Question.new(question_params)
        format.html { redirect_to edit_admin_poll_path(@poll), notice: 'Question was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to edit_admin_poll_path(params[:poll_id]), notice: 'Question was successfully destroyed.' }
    end
  end

  private

    def question_params
      params.require(:question).permit(:title)
    end
end
