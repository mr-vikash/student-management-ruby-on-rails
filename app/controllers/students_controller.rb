class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    def show
        @student = Student.find(params[:id])
    end
    def new
        @student = Student.new
        
    end 
    def create
        @student = Student.new(
            firstname: params[:student][:firstname],
            lastname: params[:student][:lastname],
            email: params[:student][:email]
            )
       if @student.save 
        redirect_to students_path
       else
        render :new 
       end

    end

end
