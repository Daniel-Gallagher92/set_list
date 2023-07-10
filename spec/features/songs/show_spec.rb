require 'rails_helper'
#Add type in describe block as extra seatbelt

RSpec.describe 'the songs show page', type: :feature do 
  it 'displays the song title' do 
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 21456357)
    visit "/songs/#{song.id}"
    # kind of like saying please go to localhost:3000/songs/1

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of the artist for the song' do 
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 21456357)
    
    visit "/songs/#{song.id}"

    expect(page).to have_content(artist.name)
  end

#   As a user
# When I visit a Song show page
# Then I see the song's title, length, and play count

  describe "As a user" do 
    describe "When I visit a Song show page" do 
      it "Then I see the song's title, length, and play count" do 
        artist = Artist.create!(name: 'Carly Rae Jepsen')
        song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
        song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 21456357)

        visit "/songs/#{song.id}" 
        expect(page).to have_content(song.title)
        expect(page).to have_content(song.play_count)
        expect(page).to have_content(song.length)
      end
    end
  end

#   As a user
# When I visit a Song show page
# I see a link back to the songs index page
# When I click this link
# Then I am taken to the songs index

  describe "As a User" do 
    describe "When I visit a Song show page" do 
      describe "I see a link back to the songs index page" do 
        describe "When I click this link" do 
          it "I am taken to the songs index" do 
            
          end
        end
      end
    end
  end

end