class StudentsController < ApplicationController
    def index
        @students = Student.all
        render "students/index.html.erb"
    end

    def show
        @student = Student.find(params[:id])
        render "students/show.html.erb"
    end

    def new
        @student = Student.new
        render "students/new.html.erb"
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to student_path(@student.id)
        else
            render "students/new.html.erb"
        end
    end 

    def edit
        @student = Student.find(params[:id])
        render "students/edit.html.erb"
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to student_path(@student.id)
        else
            render "students/edit.html.erb"
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy!
        redirect_to students_path
    end

    def student_params
        params_require(:student).permit!
    end

end