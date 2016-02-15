class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      flash[:success] = "Your messages has been sent."
      redirect_to contact_path
    else
      flash[:danger] = "An error occurred while delivering this message."
      #redirect_to contact_path
      render 'static_pages/contact'
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
