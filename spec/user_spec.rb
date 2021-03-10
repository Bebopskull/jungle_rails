
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
  
     

      it "It is created with a password and password confirmation" do
      	# @category = Category.create! name: 'Apparel'
				@user = User.create( password_digest:'Abadia',password_digest_confirmation: 'Abadia',name:'Jalisco',email: 'saburo@arasaka.js')

      	expect(@user).to be_valid
      end

      
    
			
  	
	end
end


# It must be created with a password and password_confirmation fields
# These need to match so you should have an example for where they are not the same
# These are required when creating the model so you should also have an example for this
# Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
# Email, first name, and last name should also be required
