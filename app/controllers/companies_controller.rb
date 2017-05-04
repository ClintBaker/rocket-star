class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :admin_user, only: [:edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
      flash[:success] = "Company successfully created"
      redirect_to @company
    else
      flash[:danger] = "Unable to create company"
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit

  end

  def update
    if @company.update_attributes(company_params)
      flash[:success] = "Profile updated"
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    flash[:success] = "Company deleted"
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :state, :zipcode, :country, :website, :phone)
  end

  def admin_user
      @company = Company.find(params[:id])
      redirect_to(root_url) unless @company.user == current_user
  end

end