
    class PagesController < ApplicationController

        def index
            @packages = Package.all
            @students = Student.all
            @class_catalogs = ClassCatalog.all
            render "pages/index.html.erb"
        end
        
    end