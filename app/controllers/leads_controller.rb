class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(params[:lead]) 

    if @lead.save
      redirect_to action: 'confirmation'
    else
      render action: "new" 
    end
  end

  def confirmation
  end
end
