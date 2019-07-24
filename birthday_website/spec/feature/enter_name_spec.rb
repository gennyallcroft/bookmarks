feature 'enter name' do
  scenario 'Can enter name' do
    visit('/')
    fill_in :name, with: 'Genny'
    click_on 'Submit'
    expect(page).to have_content 'Genny'
  end
end
