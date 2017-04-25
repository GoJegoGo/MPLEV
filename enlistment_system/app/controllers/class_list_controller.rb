class Class_listsController < ApplicationController
    def index
        @class_list = Class_list.all
        render "class_lists/index.html.erb"
    end

    def show
        @class_list = Class_list.find(params[:id])
        render "class_lists/show.html.erb"
    end

    def new
        @class_list = Class_list.new
        render "class_lists/new.html.erb"
    end

    def create
        @class_list = Class_list.new(class_list_params)
        if @class_list.save
            redirect_to class_list_path(@class_list.id)
        else
            render "class_lists/new.html.erb"
        end
    end 

    def edit
        @class_list = Class_list.find(params[:id])
        render "class_list/edit.html.erb"
    end

    def update
        @class_list = Class_list.find(params[:id])
        if @class_list.update(class_list_params)
            redirect_to class_list_path(@class_list.id)
        else
            render "class_list/edit.html.erb"
        end
    end

    def destroy
        @class_list = Class_list.find(params[:id])
        @class_list.destroy!
        redirect_to class_list_path
    end

    def class_list_params
        params_require(:class_list).permit!
    end

end