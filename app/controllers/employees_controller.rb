class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def new

    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employees_path
    end

    def create

    end

    def show 
        @employee = Employee.find(params[:id])
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end

    def employee_params
        params.permit(
            :first_name,
            :last_name,
            :alias,
            :title,
            :office,
            :dog_id,
            :img_url
        )
    end
end
