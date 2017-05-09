module Admin
class ClassCatalogsController < ApplicationController
    def index
        @class_catalogs = ClassCatalog.all
        render "admin/class_catalogs/index.html.erb"
    end

    def show
        @class_catalog = ClassCatalog.find(params[:id])
        render "admin/class_catalogs/show.html.erb"
    end

    def new
        @class_catalog = ClassCatalog.new
        render "admin/class_catalogs/new.html.erb"
    end

    def create
        @class_catalog = ClassCatalog.new(class_catalog_params)
        if @class_catalog.save
            redirect_to admin_class_catalog_path(@class_catalog.id)
        else
            render "admin/class_catalogs/new.html.erb"
        end
    end 

    def edit
        @class_catalog = ClassCatalog.find(params[:id])
        render "admin/class_catalogs/edit.html.erb"
    end

    def update
        @class_catalog = ClassCatalog.find(params[:id])
        if @class_catalog.update(class_catalog_params)
            redirect_to admin_class_catalog_path(@class_catalog.id)
        else
            render "admin/class_catalogs/edit.html.erb"
        end
    end

    def destroy
        @class_catalog = ClassCatalog.find(params[:id])
        @class_catalog.destroy!
        redirect_to admin_class_catalogs_path
    end

    def class_catalog_params
        params_require(:class_catalog).permit!
    end
end
end