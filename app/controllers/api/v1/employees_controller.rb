class Api::V1::EmployeesController < ApplicationController
  respond_to :json

  def index
    respond_with Employee.all
  end

  def show
    respond_with employee
  end

  def create
    respond_with :api, :v1, Employee.create(employee_params)
  end

  def update
    respond_with employee.update(employee_params)
  end

  def destroy
    respond_with employee.destroy
  end

  private

  def employee
    Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :phone, :status, :notes)
  end

end
