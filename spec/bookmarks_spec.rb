require 'bookmarks.rb'

describe Bookmarks do 
    it 'shows the list of webpages' do 
    expect(Bookmarks.all).to eq ["www.google.com","www.github.com", "www.facebook.com"]
    end 
end