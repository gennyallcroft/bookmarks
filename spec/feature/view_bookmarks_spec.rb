feature 'view bookmarks' do
  scenario 'a user wants to view their list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacdemy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

    visit('/')
    click_button('View Bookmarks')

    expect(page).to have_content "http://www.makersacdemy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"

  end
end
