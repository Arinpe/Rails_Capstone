class OpinionsController < ApplicationController
  def create
    @opinion = current_user.opinions.build(sanitize_params)
    if @opinion.save
      flash[:notice] = 'Opinion created successfully'
      redirect_to user_path(current_user)
    else
      flash[:error] = 'An error occured'
    end
  end

  def index
    @opinions = Opinion.all
  end


  def destroy
    Opinion.destroy(params[:id])
    redirect_to user_path(current_user)
  end

  protected

  def sanitize_params
    params.permit(:text)
  end
end
