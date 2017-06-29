class PhotosController < ApplicationController
    def create
         #params allows us to pull data from url i.e. the place id
        @place = Place.find(params[:place_id])
        @place.photos.create(comment_params.merge(user: current_user))
        redirect_to place_path(@place)
    end
    def comment_params
        params.require(:photo).permit(:caption)
    end
end
