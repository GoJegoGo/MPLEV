class ClassCatalogsController < ApplicationController
    def index
        @class_catalogs = ClassCatalog.all
        render "class_catalogs/index.html.erb"
    end

    def show
        @class_catalog = ClassCatalog.find(params[:id])
        render "class_catalogs/show.html.erb"
    end

    def new
        @class_catalog = ClassCatalog.new
        render "class_catalogs/new.html.erb"
    end

    def create
        @class_catalog = ClassCatalog.new(class_catalog_params)
        @class_catalog.subject_list = "Algebra, Geometry, Trigonometry, Biology, Chemistry, Physics, Earth Science, Vocabulary, Grammar, Reading Comprehension, Filipino, Abstract and Logical Reasoning"
        if @class_catalog.save
            redirect_to class_catalog_path(@class_catalog.id)
        else
            render "class_catalogs/new.html.erb"
        end
    end 

    def edit
        @class_catalog = ClassCatalog.find(params[:id])
        render "class_catalogs/edit.html.erb"
    end

    def update
        @class_catalog = ClassCatalog.find(params[:id])
        if @class_catalog.update(class_catalog_params)
            redirect_to class_catalog_path(@class_catalog.id)
        else
            render "class_catalogs/edit.html.erb"
        end
    end

    def destroy
        @class_catalog = ClassCatalog.find(params[:id])
        @class_catalog.destroy!
        redirect_to class_catalogs_path
    end

    def class_catalog_params
        params.require(:class_catalog).permit!
    end
end