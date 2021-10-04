class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories, except: [:created_at, :updated_at], include: [:games]
    end

    def show
        @category = Category.find(params[:id])
        render json: @category.games, except: [:created_at, :updated_at]
    end
end
