require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

founders = ["Bob", "Frank", "Paul", "John", "George", "Ringo"]
startups = ["meganet", "flatiron", "velonet", "twr", "google", "yahoo"]
domains = ["mega.net", "flatiron.school", "velo.net", "google.com", "yahoo.who?"]
vc = ["Billy", "Bobby", "Steve", "Geoff", "Tim", "Alan"]
funding = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]


def total_worth
  rand(1000000..1000000000000).ceil(-4)
end

def investment
  rand(1000..100000).ceil(-3)
end


startup1 = Startup.new(startups.sample, founders.sample, domains.sample )
startup2 = Startup.new(startups.sample, founders.sample, domains.sample )
startup3 = Startup.new(startups.sample, founders.sample, domains.sample )
startup4 = Startup.new(startups.sample, founders.sample, domains.sample )
startup5 = Startup.new(startups.sample, founders.sample, domains.sample )
startup6 = Startup.new(startups.sample, founders.sample, domains.sample )
startup7 = Startup.new(startups.sample, founders.sample, domains.sample )
startup8 = Startup.new(startups.sample, founders.sample, domains.sample )
startup9 = Startup.new(startups.sample, founders.sample, domains.sample )
startup10 = Startup.new(startups.sample, founders.sample, domains.sample )

venture_capitalist1 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist2 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist3 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist4 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist5 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist6 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist7 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist8 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist9 = VentureCapitalist.new(vc.sample, total_worth)
venture_capitalist10 = VentureCapitalist.new(vc.sample, total_worth)


fund1 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)
fund2 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)
fund3 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)
fund4 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)
fund5 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)
fund6 = startup1.sign_contract(venture_capitalist.sample, funding.sample, investment)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line