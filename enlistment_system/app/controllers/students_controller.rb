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
        @student.build_assessment
        render "students/new.html.erb"
    end

    def create
        
        @student = Student.new(student_params)
        @student.assessment.final_amount = @student.assessment.package.initial_price
        @student.assessment.has_paid = FALSE
        @student.assessment.period = Period.first
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
    private     
        def student_params
            params.require(:student).permit!
        end
end