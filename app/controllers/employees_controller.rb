class EmployeesController < ApplicationController

    def index
        @empData = "Employee";
    end

    def show
        emp = Employee.order('id DESC');
        render json:{
            status: 'success',
            records: emp
        }
    end

    def empData
        emp = Employee.find(params[:id])
            render json: {
                status: 'success',
                message: 'Loaded Employee',
                record: emp
            }
    end
end
