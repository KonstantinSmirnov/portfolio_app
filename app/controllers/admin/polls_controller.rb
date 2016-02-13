class Admin::PollsController < ApplicationAdminController

  def index
    @polls = Poll.all.reverse
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)

    respond_to do |format|
      if @poll.save
        format.html {
          flash[:success] = "Poll was successfully added."
          redirect_to edit_admin_poll_path(@poll)
        }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])

    respond_to do |format|
      if @poll.update(poll_params)
        format.html {
          flash[:success] = "Poll was updated successfully."
          redirect_to edit_admin_poll_path(@poll)
        }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @poll = Poll.find(params[:id])

    @poll.destroy
    respond_to do |format|
      format.html {
        flash[:success] = "Poll was successfully destroyed"
        redirect_to admin_polls_path
      }
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:title, questions_attributes: [:id, :title, :_destroy])
  end

end
