require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of word', {:type => :feature}) do
  it('shows the index page')  do
    visit('/')
    expect(page).to have_content("Words Defined")
  end
end
