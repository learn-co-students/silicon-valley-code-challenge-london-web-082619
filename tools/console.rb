require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
founders = ["Angus Morrison", "Bianca Bass", "Trudy Morrison", "Chris Morrison"]
startups = ["Uber", "Facebook", "ClearScore", "Stripe", "PayPal"]
domains = ["finance", "ecommerce", "travel", "retail", "gaming"]

vcs = ["Big Corp", "MegaFund", "SoftBank", "Banco Massivo"]
worths = [1_200_000_000, 1000, 1_000_000, 1_000_000_000_000]

types = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]
investments = [100.00, 3000000, 500000000, 7, 501235234.30]

10.times { Startup.new(startups.sample, founders.sample, domains.sample) }
10.times { VentureCapitalist.new(vcs.sample, worths.sample) }
50.times { FundingRound.new(Startup.all.sample, VentureCapitalist.all.sample, types.sample, investments.sample)}

###### Startups ######

test_startup = Startup.all.sample
p test_startup.name
p test_startup.funding_rounds


=begin
###### VCs ######
test_vc = VentureCapitalist.all.sample
p test_vc
p test_vc.invested("gaming")
=end



0 #leave this here to ensure binding.pry isn't the last line