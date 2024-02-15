class ChargesController < ApplicationController

  # '/criminals/:criminal_id/charges/new'
  def new
    @criminal = Criminal.find(params[:criminal_id])
    @charge = Charge.new
    # @crimes = Crime.order(:name)
    @crimes = Crime.where.not(id: @criminal.crimes).order(:name)
  end

  def create
    @criminal = Criminal.find(params[:criminal_id])
    @charge = Charge.new(charge_params)
    @charge.criminal = @criminal
    if @charge.save
      redirect_to prison_path(@criminal.prison)
    else
      @crimes = Crime.where.not(id: @criminal.crimes).order(:name)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def charge_params
    params.require(:charge).permit(:date, :crime_id)
  end
end
