class PokemonsController < ApplicationController

	def new
		render 'new'
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to @pokemon.trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
	end

	def capture
    @pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@trainer = @pokemon.trainer_id
		@pokemon.destroy
		redirect_to trainer_path(@trainer)
	end

	private
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
