require_relative '../setup_test_database'

feature 'add bookmark' do
  scenario 'a user wants to add a bookmark to the database' do
    visit '/'
    click_on 'View Bookmarks'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    click_on 'Add Bookmark'
    fill_in 'URL', with: 'https://www.bbc.co.uk'
    click_on 'Add'
    expect(page).to have_content 'https://www.bbc.co.uk'
  end
end
