require 'spec helper'

feature 'Viewing links' do
 
   scenario 'I can see existing links on the links page' do
 
    Link.create(url: 'https://www.facebook.com/thirdspacelearningmaths/', title: 'ThirdSpaceLearning Facebook')
     visit '/links'
      expect(page.status_code).to eq 200
 
    within 'ul#links' do
       expect(page).to have_content('ThirdSpaceLearning')
     end
 
   end
 
 end