class AddsController < ApplicationController

	def index
		@add = Add.all
	end

	def new
		@add = Add.new
	end

	def create
		@add = Add.new(add_params)
		if @add.save
			redirect_to adds_path
		else
			render 'new'
		end
	end

	def show
		@add = Add.find(params[:id])
	end

	def edit
		@add = Add.find(params[:id])
	end

	private
		def add_params
			params[:add].permit(:num1,:num2)
		end
end
