feature 'Collects users date in form' do
  scenario 'Expects user to input a name, enter their birthday click submit and get an output' do
    visit('/')
    fill_in "name", :with => "Josh"
    fill_in "day", :with => 1
    select 'January', from: 'month'
    click_button "submit"
    expect(page).to have_content 'Happy Birthday Josh!'
  end
end