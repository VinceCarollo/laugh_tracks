class ComediansController < ApplicationController
    def index
        if !params[:age].nil?
          @comedians = Comedian.get_comedians_by_age(params[:age])
        else
          @comedians = Comedian.get_all_comedians
        end
        @comedian_count = @comedians.count
    end

    def show
        @comedian = Comedian.get_comedian_by_id(params[:id])
    end

    def new
    end

    def create
      comedian = Comedian.new(comedian_params)
      comedian.save

      redirect_to "/comedians/#{comedian.id}"
    end

    private

    def comedian_params
      params.require(:comedian).permit(:name, :age, :birthplace)
    end
end
