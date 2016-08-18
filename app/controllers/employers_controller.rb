class EmployersController < ApplicationController
  
  before_action :authenticate_user!

  def index
    if params[:search]
      @employers = Employer.search(params[:search]).order("created_at DESC")
    else
      @employers = Employer.all.order('created_at DESC')
    end
    @employers = Employer.paginate(page: params[:page], per_page: 25)

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
