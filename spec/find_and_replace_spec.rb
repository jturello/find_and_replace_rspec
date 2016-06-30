require('rspec')
require('find_and_replace')

describe('String#find_and_replace!') do

  it('replaces one instance of the word world with the word universe') do
    expect(("Hello world!").find_and_replace!("world", "universe")).to(eq("Hello universe!"))
  end

  it('replaces multiple instances of the word world with the word universe') do
    expect(("Hello world world!").find_and_replace!("world", "universe")).to(eq("Hello universe universe!"))
  end

  it('only replaces instances of the whole word cat with the word dog') do
    expect(("I am walking my cat to the cathedral!").find_and_replace!("cat", "dog")).to(eq("I am walking my dog to the cathedral!"))
  end

  it('only replaces instances of the whole number 123 with whole number 321') do
    expect(("123 Testing Road!").find_and_replace!("123", "321")).to(eq("321 Testing Road!"))
  end

end
