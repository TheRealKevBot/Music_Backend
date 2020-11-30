class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all 
        render json: @favorites
    end

    def create 
        @favorite = Favorite.create(
            song_title: params[:song_title],
            artist_name: params[:artist_name],
            username: params[:username]
        )
        render json: @favorite, status: :created
    end
    
end
