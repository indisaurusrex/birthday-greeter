feature 'Collects users name in form' do
  scenario 'Expects user to input a name, click submit and get an output' do
    visit('/')
    fill_in "name", :with => "Josh"
    click_button "submit"
    expect(page).to have_content 'Happy Birthday Josh!'
  end
end