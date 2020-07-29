class MerchandisesController < ApplicationController
    before_action :set_merchandise, only: [:show, :edit, :update]

    def index
        @merchandises = Merchandise.all
        render json: @merchandises
    end

    def show
        render json: @merchandise
    end

    def new
    end

    def create
        @merchandise = Merchandise.new(merchandise_params)

        if @merchandise.save
            render json: @merchandise, status: :created, location: @merchandise
        else
            render json: @merchandise.errors, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        @merchandise.update(merchandise_params)
        render json: @merchandise
    end

    private
        def set_merchandise
            @merchandise = Merchandise.find(params[:id])
        end

        def merchandise_params
            params.require(:merchandise).permit(:name, :price)
        end
end
