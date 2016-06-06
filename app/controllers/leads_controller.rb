class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params) 

    if @lead.save
      redirect_to action: 'confirmation'
    else
      render action: "new" 
    end
  end

  def confirmation
  end

  private

    def lead_params
      params.fetch(:lead, {}).permit(:nome, :email)
    end
end
