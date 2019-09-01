require_relative 'app/models/startup.rb'
require_relative 'app/models/funding_round.rb'
require_relative 'app/models/venture_capitalist.rb'

apple = Startup.new("Apple", "Steve Jobbs", "software")
google = Startup.new("Google", "Larry Page", "google.com")
facebook = Startup.new("Facebook", "Mark Zuckerberg", "socialmedia")
amazon = Startup.new("Amazon", "Jeff Bezos", "ecommerce")
microsoft = Startup.new("Microsoft", "Bill Gates", "software")
alibaba = Startup.new("Alibaba", "Jack Ma", "ecommerce")


peter = VentureCapitalist.new("Peter", 2000000000.0)
soros = VentureCapitalist.new("George", 3000000000.0)
tom = VentureCapitalist.new("Tom B", 5000.0)
derek = VentureCapitalist.new("Derek", 130000.0)
mary = VentureCapitalist.new("Mary", 8000000000.0)
harry = VentureCapitalist.new("Harry", 8000000000.0)

a = FundingRound.new(apple, peter, "A", 200000.0)
b = FundingRound.new(google, soros, "B", 20000.0)
c = FundingRound.new(facebook, tom, "C", 40000.0)
d = FundingRound.new(apple, soros, "B", 3000000.0)
e = FundingRound.new(alibaba, derek, "D", 800000000.0)
f = FundingRound.new(amazon, harry, "A", 9000000.0)
g = FundingRound.new(alibaba, mary, "B", 800000.0)
h = FundingRound.new(google, tom, "D", 3000000000000.0)
i = FundingRound.new(apple, derek, "D", 2987000000.0)
j = FundingRound.new(amazon, peter, "C", 8000000.0)
k = FundingRound.new(facebook, harry, "B", 7000000.0)

# p apple
# p google
# p facebook

 p Startup.find_by_founder("Larry Page")
# p google.pivot("abc.com", "Sergei")
# p Startup.domains
# p VentureCapitalist.tres_commas_club

# p a 
# p b  
# p c

# p google.num_funding_rounds
# p google.total_funds
# p google.investors
# p google.big_investors

# p peter.funding_rounds
# p peter.portfolio
# p peter.biggest_investment
p peter.invested("ecommerce")



