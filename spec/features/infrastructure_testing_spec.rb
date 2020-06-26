feature 'Testing infrastructure' do
  scenario 'Testing the website actually works and outputs a message' do
    visit('/')
    expect(page).to have_content(":)")
  end
end