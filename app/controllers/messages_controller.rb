class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def create
    @message = Message.new(mail_params)

    respond_to do |format|
      if @message.save
        MessageNotificationMailer.interlocutor_email.deliver_now
        format.html { redirect_to contacts_path, notice: 'Mail was successfully created.' }
      else
        format.html { redirect_to contacts_path, notice: 'Oops. We have some problem. Please try again later.' }
      end
    end
  end

  def update
    respond_to do |format|
      if @message.update(mail_params)
        format.html { redirect_to @message, notice: 'Mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to mails_url, notice: 'Mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mail
      @message = Message.find(params[:id])
    end

    def mail_params
      params.require(:message).permit(:subject, :message_body)
    end
end
