class Admin::SalesController < ApplicationController

	def index
		@sales = Sale.all.order(id: :desc)
	end

	def new
		@sale = Sale.new
	end

end

