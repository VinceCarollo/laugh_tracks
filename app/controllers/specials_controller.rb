class SpecialsController < ApplicationController

  def new
    @comedian = Comedian.find(params[:comedian_id])
    @special = Special.new
  end

  def create
    comedian = Comedian.find(params[:comedian_id])
    special = comedian.specials.new(special_params)
    special.save
    redirect_to comedian_path(comedian)
  end

  private

  def special_params
    params.require(:special).permit(:name, :runtime_mins)
  end
end
