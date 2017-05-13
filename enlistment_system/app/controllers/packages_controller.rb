class PackagesController < ApplicationController
    def index
        @packages = Package.all
        render "packages/index.html.erb"
    end

    def show
        @package = Package.find(params[:id])
        render "packages/show.html.erb"
    end

    def new
        @package = Package.new
        render "packages/new.html.erb"
    end

    def create
        @package = Package.new(package_params)
        if @package.save
            redirect_to package_path(@package.id)
        else
            render "packages/new.html.erb"
        end
    end 

    def edit
        @package = Package.find(params[:id])
        render "packages/edit.html.erb"
    end

    def update
        @package = Package.find(params[:id])
        if @package.update(package_params)
            redirect_to package_path(@package.id)
        else
            render "packages/edit.html.erb"
        end
    end

    def destroy
        @package = Package.find(params[:id])
        @package.destroy!
        redirect_to packages_path
    end

    def package_params
        params.require(:package).permit!
    end
end