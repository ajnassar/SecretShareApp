class SecretsController < ApplicationController
  def new
    @secret = Secret.new
    @recipient_id = params[:user_id]
    render :new
  end

  def create
    params[:secret][:author_id] = current_user.id
    @secret = Secret.new(params[:secret])
    if @secret.save
      redirect_to user_url(params[:secret][:recipient_id])
    else
      render :new
    end
  end
end
