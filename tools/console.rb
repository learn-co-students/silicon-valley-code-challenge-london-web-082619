require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#startups
apple = Startup.new("Apple", "Steve Jobs", "apple.com")
google = Startup.new("Google", "Larry Page", "google.com")
facebook = Startup.new("Facebook", "Mark Zuckerberg", "facebook.com")

#VCs
betty = VentureCapitalist.new("Betty White", 46200000000000)
andrew = VentureCapitalist.new("Andrew Stevens", 10)
simon = VentureCapitalist.new("Simon Dude", 10000000000000000000000000)

#funding rounds
round1 = FundingRound.new(apple, betty, "Angel", 1000000000)

# p apple
# p google 
# p facebook

# p Startup.find_by_founder("Steve Jobs")

# p apple.pivot("Alphabet.com", "Alphabet")
# p apple

# p Startup.domains

# p VentureCapitalist.tres_commas_club

# p round1


apple.sign_contract(betty, "Round1", 200)
apple.sign_contract(simon, "Round1", 300)

binding.pry


0 #leave this here to ensure binding.pry isn't the last line