feature 'hello world test' do
  scenario 'it returns hello world' do
    visit '/'
    expect(page).to have_content("Hello World")
  end
end

  feature 'Shows a bookmark when /index is visited' do
    scenario ' Shows www.google.com' do
      visit '/index'
      expect(page).to have_content("www.google.com")
    end

    feature 'Shows the viewings of bookmarks' do
      scenario 'shows a list of bookmarks' do
        visit '/bookmarks'
        expect(page).to have_content("www.google.com")
        expect(page).to have_content("www.github.com")
        expect(page).to have_content("www.apple.com")
      end
    end

end