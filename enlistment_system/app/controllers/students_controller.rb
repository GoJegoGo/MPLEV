class StudentsController < ApplicationController
    def index
        @students = Student.all
        @assessments = Assessment.all
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
        @student.assessment.class_catalog.slots_taken = (@student.assessment.class_catalog.slots_taken + 1)
        @student.assessment.discount_rate = "0.3"
        @student.assessment.has_paid = FALSE
        @student.assessment.period = Period.first
        if @student.save
            # if user_signed_in
            # redirect_to authenticated_root_path
            redirect_to student_path(@student.id)
        else
            # redirect_to unauthenticated_root_path
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