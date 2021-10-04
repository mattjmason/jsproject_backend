class GamesController < ApplicationController

    def index 
        @games = Game.all 
        render json: @games, except: [:created_at, :updated_at], include: :category
    end

    def create 
        @game = Game.create(game_params)
        if @game.save 
        render json: @game, except: [:created_at, :updated_at]
        else 
            render json: {error: 'Could not be created'}
        end
    end

    def destroy 
        @game = Game.find(params[:id])
        @game.destroy 
        render json: {message: "Successfully deleted #{Game.name}!"}
    end

    private 

    def game_params
        params.require(:game).permit(:name, :genre, :published, :description, :category_id)
    end
end
