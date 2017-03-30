require 'rails_helper'

RSpec.feature "User views all playlist" do
  scenario "they see a list of all playlists" do

  playlist_one, playlist_two, playlist_three = create_list(:playlist, 3)


  visit playlists_path

  expect(page).to have_content playlist_one.name

  expect(page).to have_link playlist_one.name, href: playlist_path(playlist_one)
  expect(page).to have_link playlist_two.name, href: playlist_path(playlist_two)
  expect(page).to have_link playlist_three.name, href: playlist_path(playlist_three)

  end
end
