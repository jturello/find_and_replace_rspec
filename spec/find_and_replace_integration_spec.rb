require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('find_and_replace page', {:type => :feature}) do
  it('replaces whole strings in starting text when whole word search radio-button is selected') do
    visit('/')
    fill_in('text', :with => 'I am walking my cat to the cathedral')
    choose('whole')
    fill_in('search_string', :with => 'cat')
    fill_in('replacement', :with => 'dog')
    click_button('Send')

    expect(page).to have_content('I am walking my dog to the cathedral')
  end
end
