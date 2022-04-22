class Api::V1::CarsController < ApplicationController
    def index
        @search = Car.ransack(params[:q])
        @search.sorts = 'model asc'
        render json: @search.result(distinct: true)
    end
end
