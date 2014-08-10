class PromosController < ApplicationController
  def show
    @promo = Promo.find(params[:id])
  end
				
	# add promo page
	def new
    @promo = Promo.new
  end

	# submission of signup form
	def create
    @promo = Promo.new(params[:promo])
    if @promo.save
      # Handle a successful save.
			redirect_to @promo
    else
      render 'new'
    end
  end
end
