class EmployersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_freelancer!

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

  # unless the current user is a freelancer, log out.

  def ensure_freelancer!
    unless current_user.type == "Freelancer"
      sign_out current_user

      redirect_to root_path

      return false
    end
  end

end
