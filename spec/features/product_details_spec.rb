require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99

      )
    end
  end

  # tests
  scenario "Select a product and navigate to that product details page" do
    # ACT
    visit root_path


    find('.product').click #recomended

    # visit product_path(id:1)


    # DEBUG 
    save_screenshot


    #verify
    expect(page).to have_css 'article.product', count: 1




  end
end
