class PrisonsController < ApplicationController

  # 'prisons/:id'
  def show
    @prison = Prison.find(params[:id])
  end
end
