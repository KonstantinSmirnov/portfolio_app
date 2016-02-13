class PollsController < ApplicationController
  def index
    @poll = Poll.last
  end

  def vote
    respond_to do |format|
      if params[:poll].blank? || params[:poll][:question].blank?
        flash.now[:alert] = 'You need to click a choice to vote!'
        format.js { render 'poll_error' }
      else
        @poll = Poll.find(params[:id])
        @poll.questions[params[:poll][:question].to_i].votes += 1
        @poll.save
        flash.now[:notice] = 'Thanks for your vote!'
        format.js { render 'poll_show_results' }
      end
    end
  end

  def results
    respond_to do |format|
      @poll = Poll.find(params[:id])
      flash = nil
      format.js { render 'poll_show_results' }
    end
  end

  def questions
    respond_to do |format|
      flash = nil
      @poll = Poll.find(params[:id])
      format.js { render 'poll_show_questions' }
    end
  end

end
