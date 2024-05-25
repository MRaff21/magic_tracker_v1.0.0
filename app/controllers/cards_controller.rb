class CardsController < ApplicationController
    def show
        # Okay so this will actually dump a bunch of JSON of the card we pull it can find by name and then drop us all the info
        @card_data = ScryfallService.fetch_card_data_by_name(params[:id])
        render :show
    end
end
