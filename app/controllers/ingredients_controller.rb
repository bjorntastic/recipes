class IngredientsController < ApplicationController

	def create
		@ingredient = Ingredient.new
		@ingredient.name = params[:name]
		@ingredient.recipe_id = params[:id]
		if @ingredient.save
			respond_to do |format|
				format.html { redirect_to recipe_path(@recipe), notice: 'Ingredient added' }
				format.js { }
			end
		else
			respond_to do |format|
				format.html { redirect_to recipe_path(@recipe), notice: 'Something went wrong' }
				format.js { }
			end
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		recipe = @ingredient.recipe
		@ingredient.destroy
		redirect_to recipe_path(recipe), notice: 'Ingredient deleted'
	end

end
