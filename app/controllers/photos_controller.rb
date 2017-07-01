class PhotosController < ApplicationController
    def create
         #params allows us to pull data from url i.e. the place id
        @place = Place.find(params[:place_id])
        @place.photos.create(photo_params)
        redirect_to place_path(@place)
    end
    
    def photo_params
        params.require(:photo).permit(:caption)
    end
end
