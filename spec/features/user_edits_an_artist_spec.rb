require 'rails_helper'


RSpec.feature "User edits an exisiting artist" do
  scenario "they enter data to update an existing artist" do
    Artist.create(id: 1, name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    new_artist_image_path = "http://www.onlinesheetmusic.com/static/images/image/Bob_Marley.jpg"

    visit '/artists/1'
    click_on "Edit Artist"
    fill_in "artist_image_path", with: new_artist_image_path
    click_on "Update Artist"

    expect(page).to have_content "Bob Marley"
    expect(page).to have_css("img[src=\"#{new_artist_image_path}\"]")
  end
end
