require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rectangle path', {:path => :feature}) do
  it('processes the user entry and return whether it is a square or not') do
    visit('/')
    fill_in('length', :with => '5')
    fill_in('width', :with => '5')
    click_button('Submit')
    expect(page).to have_content('this is a square.')
  end
end
