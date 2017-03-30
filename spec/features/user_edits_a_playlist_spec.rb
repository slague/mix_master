require 'rails_helper'


RSpec.feature "User edits an exisiting playlist" do
  scenario "they enter data to update an existing playlist" do

#use some factory stuff...
    playlist        = create(:playlist_with_songs)
    one, two, three = playlist.songs
    song            = create(:song, title: "New Song")


    visit playlist_path(playlist)
    click_on "Edit playlist"
    uncheck("song-#{one.id}")
    check ("song-#{song.id}")
    click_on "Update Playlist"

    expect(page).to have_content playlist.name
    expect(page).to have_content song.title
    expect(page).to_not have_content one.title
  end
end
