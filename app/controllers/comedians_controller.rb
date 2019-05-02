class ComediansController < ApplicationController
    def index
        if !params[:age].nil?
          @comedians = Comedian.where("age = #{params[:age]}").all
        else
          @comedians = Comedian.all
        end
    end

    def show
        @comedian = Comedian.find(params[:id])
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
