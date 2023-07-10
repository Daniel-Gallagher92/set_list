require 'rails_helper'

RSpec.describe 'the songs index page' do 
  #should this be merged with artist_songs_index?
  
  #As a user
  #When I visit the songs index ("/songs")
  #Then I see a header "All Songs"

  describe "as a user" do 
    describe "When I visit songs index (/songs)" do 
      it "Then I see a header \"All Songs\" " do 
        
        
        visit "/songs/" 

        expect(page).to have_content("All Songs")
      end
    end
  end
end