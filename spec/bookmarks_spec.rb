require 'bookmarks.rb'

describe Bookmarks do 
    it 'shows the list of webpages' do 
    expect(Bookmarks.all.first).to be_an_instance_of(Bookmarks)
    end 
end

