require 'rails_helper'

RSpec.feature "User deletes an artists" do
  scenario "they see a list of all artists" do
  artist1 = Artist.create(id: 1, name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
  artist2 = Artist.create(id: 2, name: "Beyonce", image_path:"http://factmag-images.s3.amazonaws.com/wp-content/uploads/2013/12/beyonce-121313.jpg")


    visit '/artists/1'
    click_on "Delete"


    expect(page).to have_content "'Bob Marley' Deleted!"
    expect(page).to have_content "Beyonce"
  end
end
