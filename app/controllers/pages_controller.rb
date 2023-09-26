class PagesController < ApplicationController
  def home; end

  def about; end

  def contact
    @message = Message.new
  end

  def create_message
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = 'Thank you for contacting us! We weill get back to you soon.'
      redirect_to pages_contact_path
    else
      render :contact
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
