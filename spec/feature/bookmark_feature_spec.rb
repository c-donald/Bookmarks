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
        expect(page).to have_content("www.facebook")
        expect(page).to have_content("www.github.com")
        expect(page).to have_content("www.google.com")
      end
    end
    feature "adding bookmarks" do
      scenario " I can add bookmarks to my db" do 
        visit '/bookmarks'
        click_on('add new bookmark')
        fill_in 'url', with:('www.youtube.com')
        click_on('Submit')
        expect(page).to have_content("www.youtube.com")
      end
    end

    feature "it displays a title" do
      scenario "adding and viewing a url title" do
        visit"/bookmarks"
        click_on('add new bookmark')
        fill_in 'url', with:('www.youtube.com')
        fill_in 'title', with:('Youtube')
        click_on('Submit')
        expect(page).to have_content "Youtube"
        expect(page).not_to have_content "www.youtube.com"
      end
    end
end