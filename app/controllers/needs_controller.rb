class NeedsController < ApplicationController
  
  def index
    @needs = Need.limit(30)
  end
  
  def new
    @need = Need.new
  end
  
  def create
    @n = Need.new(params[:need])
    @n.user_id = current_user.id
    if @n.save
      redirect_to needs_path
    else
      flash[:error] = "You has been error"
    end
  end
  
  def destroy
    n = Need.find(params[:id])
    n.destroy
    redirect_to needs_path
  end
  
end
