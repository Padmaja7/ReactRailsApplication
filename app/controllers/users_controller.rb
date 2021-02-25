class UsersController < ApplicationController
    def index
        emp = Employee.order('id DESC');
        render json:{
            status: 'success',
            records: emp
        }
    end
end
