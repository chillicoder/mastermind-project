Given /^I am not yet playing$/ do
  # do nothing (at the moment)
end

When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Mastermind::Game.new(@messenger)
  game.start
end

Then /^the game should say "(.*)"$/ do |message|
  @messenger.string.split("\n").should include(message)
end

