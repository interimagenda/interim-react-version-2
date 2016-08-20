class JobsController < ApplicationController

  before_action :authenticate_user!, only: [:show, :edit, :update, :new, :create, :destroy]
  before_action :ensure_employer!, only: [:edit, :update, :new, :create, :destroy]

  def index
    @jobs = Job.all.paginate(page: params[:page], per_page: 25).filter(params.slice(:business, :field, :pay_rate_minimum)).paginate(page: params[:page], per_page: 25)
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to @job
    else
      render 'edit'
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private

  def job_params
    params.require( :job ).permit(:title, :employer_id, :start_date, :job_description, :offered_pay_rate )
  end

  protected

  def ensure_freelancer!
    unless current_user.type == "Freelancer"
      sign_out current_user

      redirect_to root_path

      return false
    end
  end

  def ensure_employer!
    unless current_user.type == "Employer"
      sign_out current_user

      redirect_to root_path

      return false
    end
  end

end
