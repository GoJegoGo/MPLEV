module Admin
    class PagesController < ApplicationController

        def index
            @packages = Package.all
            @students = Student.all
            @class_catalogs = ClassCatalog.all
            render "admin/pages/index.html.erb"
        end
        
    end
end