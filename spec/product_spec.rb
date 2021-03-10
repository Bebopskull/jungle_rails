
# require './app/models/category.rb'
# require './app/models/product.rb'
require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
  
     

      it "Is saved when filled with all 4 validation fields" do
      	@category = Category.create! name: 'Apparel'
				@product  = Product.create(name:'Abadia',price: 55009,quantity:'2',category: @category)
      	
      	expect(@product).to be_valid
      end

      it "name = nil, Is not saved when not filled with all 4 validation fields" do
      	@category = Category.create! name: 'Apparel'
				@product  = Product.create(name: nil ,price: 55009,quantity:'2',category: @category)
 
      	expect(@product).to_not be_valid
      end

      it "price = nil, Is not saved when not filled with all 4 validation fields" do
      	@category = Category.create! name: 'Apparel'
				@product  = Product.create(name:'Abadia', price: nil,quantity:'2',category: @category)
      	
      	expect(@product).to_not be_valid
      end

      it " quantity= nil, Is not saved when not filled with all 4 validation fields" do
      	@category = Category.create! name: 'Apparel'
				@product  = Product.create(name:'Abadia',price: 55009,quantity: nil,category: @category)
      	
      	expect(@product).to_not be_valid
      end

      it "category = nil, Is not saved when not filled with all 4 validation fields" do
      	@category = Category.create! name: 'Apparel'
				@product  = Product.create(name:'Abadia',price: 55009,quantity:'2',category: nil)
      	
      	expect(@product).to_not be_valid
      end

    
			
  	
	end
end
