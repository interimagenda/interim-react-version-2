class EmployersController < ApplicationController

  before_action :authenticate_user!

  def index
    if params[:search]
      @employers = Employer.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 25)
    else
      @employers = Employer.all.order('created_at DESC').paginate(page: params[:page], per_page: 25)
    end
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy
    redirect_to employers_path
  end

end
