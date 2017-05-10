class AssessmentsController < ApplicationController

    def index 
        @assessments = Assessment.all
        render "/assessments/index.html.erb"
    end

    def show
        @assessment = Assessment.find(params[:id])
        render "assessments/show.html.erb"
    end

    def new
        @assessment = Assessment.new
        @assessment = Student.build_assessment
        @assessment = Package.build_assessment
        @assessment = Class_Catalog.build_assessment 
        render "assessments/new.html.erb"
    end

    def create
        @assessment = Assessment.new(assessment_params) 
        if @assessment.save
            redirect_to assessment_path(@assessment.id)
        else
            render "assessments/new.html.erb"
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
        redirect_to assessment_path
    end

    def assessment_params
        params.require(:assessment).permit.(:announcement, students_attributes: [:name, :email_ad, :high_school, :birthdate, :age, :contact_number, :father_name, :mother_name])
        params.require(:assessment).permit.(:announcement, packages_attributes: [:name])
        params.require(:assessment).permit.(:announcement, class_catalogs_attributes: [:class_catalog_id])
    end
end