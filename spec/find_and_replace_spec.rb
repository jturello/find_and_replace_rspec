require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do

  it('replaces the word world with the word universe') do
    expect(("Hello world!").find_and_replace("world", "universe")).to(eq("Hello universe!"))
  end

end
