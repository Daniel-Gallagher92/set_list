require 'rails_helper'

RSpec.describe 'Artist destroy page' do 
  it 'can delete the artsit from the index page' do
    artist = Artist.create!(name: 'Prince')

    visit '/artists'
    
    click_button 'Delete'

    expect(current_path).to eq('/artists')
    expect(page).to_not have_content(artist.name)
  end
end