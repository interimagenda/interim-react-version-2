class FreelancersController < ApplicationController

  before_action :authenticate_user!

  def index
    if params[:search]
      @freelancers = Freelancer.search(params[:search]).order("created_at DESC")
    else
      @freelancers = Freelancer.all.order('created_at DESC')
    end
    @freelancers = Freelancer.filter(params.slice(:availability, :business, :field, :education)).paginate(page: params[:page], per_page: 25)
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

end
