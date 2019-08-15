class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :create
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    redirect_to cocktail_path(@dose.cocktail)
    @dose.destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id)
  end
end
