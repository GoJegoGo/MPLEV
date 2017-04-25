class AssessmentsController < ApplicationController

    def index 
        @assessments = Assessment.all
        render "/assessment/index.html.erb"
    end

    def show
        @assessment = Assessment.find(params[:id])
        render "assessments/show.html.erb"
    end

    def new
        @assessment = Assessment.new
        render "students/new.html.erb"
    end

    def create
        @assessment = Assessment.new(student_params)
        if @assessment.save
            redirect_to assessment_path(@assessment.id)
        else
            render "students/new.html.erb"
        end
    end 

    def edit
        @assessment = Assessment.find(params[:id])
        render "assessments/edit.html.erb"
    end

    def update
        @assessment = Assessment.find(params[:id])
        if @assessment.update(assessment_params)
            redirect_to assessment_path(@assessment.id)
        else
            render "assessments/edit.html.erb"
        end
    end

    def destroy
        @assessment = Assessment.find(params[:id])
        @assessment.destroy!
        redirect_to assessments_path
    end

    def assessment_params
        params_require(:assessment).permit!
    end
end