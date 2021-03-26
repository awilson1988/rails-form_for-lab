class SchoolClassesController < ApplicationController
    before_action :set_classes, only: [:show, :update, :edit]

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
    end

    def edit
    end

    def update
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def set_classes
        @school_class = SchoolClass.find(params[:id])
    end
end