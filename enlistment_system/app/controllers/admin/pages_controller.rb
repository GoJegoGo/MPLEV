module Admin
    class PagesController < ApplicationController

        def index
            render "admin/pages/index.html.erb"
        end
        
    end
end