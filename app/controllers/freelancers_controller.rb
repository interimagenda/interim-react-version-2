class FreelancersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_employer!

  def index
    if params[:search]
      @freelancers = Freelancer.search(params[:search]).order("created_at DESC").filter(params.slice(:availability, :business, :field, :education)).paginate(page: params[:page], per_page: 25)
    else
      @freelancers = Freelancer.all.order('created_at DESC').filter(params.slice(:availability, :business, :field, :education)).paginate(page: params[:page], per_page: 25)
    end
  end

  def show
    @freelancer = Freelancer.find(params[:id])
  end

  def edit
    @freelancer = Freelancer.find(params[:id])
  end

  def update
    @freelancer = Freelancer.find(params[:id])
    if @freelancer.update_attributes(freelancer_params)
      redirect_to @freelancer
    else
      render 'edit'
    end
  end

  def destroy
    @freelancer = Freelancer.find(params[:id])
    @freelancer.destroy
    redirect_to freelancers_path
  end

  private

  # unless the current user is an employer, log out.

  def ensure_employer!
    unless current_user.type == "Employer"
      sign_out current_user

      redirect_to root_path

      return false
    end
  end

end
