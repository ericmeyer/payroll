require 'core/employee/interactor/create'

class EmployeesController < ApplicationController
  respond_to :json

  def create
    employee = params[:employee] || {}
    add_employee = Core::Employee::Interactor::Create.new(TRANSACTION_FACTORY)
    begin
      employee = add_employee.execute(employee)
    rescue Core::Error::ValidationError => e
      employee[:errors] = e.errors
    end
    render :json => employee.to_hash.to_json
  end

end