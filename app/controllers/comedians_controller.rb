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
end
