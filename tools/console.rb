require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

founders = ["Bob", "Frank", "Paul", "John", "George", "Ringo"]
startups = ["meganet", "flatiron", "velonet", "twr", "google", "yahoo"]
domains = ["mega.net", "flatiron.school", "velo.net", "google.com", "yahoo.who?"]
vc = ["billy", "bobby", "will", "robert", "william", "rob"]
funding = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]

def total_worth
  rand(10000000..10000000000).ceil(-4)
end

def investment
  rand(1000..1000000).ceil(-3)
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

vencap1 = VentureCapitalist.new(vc.sample, total_worth)
vencap2 = VentureCapitalist.new(vc.sample, total_worth)
vencap3 = VentureCapitalist.new(vc.sample, total_worth)
vencap4 = VentureCapitalist.new(vc.sample, total_worth)
vencap5 = VentureCapitalist.new(vc.sample, total_worth)
vencap6 = VentureCapitalist.new(vc.sample, total_worth)
vencap7 = VentureCapitalist.new(vc.sample, total_worth)
vencap8 = VentureCapitalist.new(vc.sample, total_worth)
vencap9 = VentureCapitalist.new(vc.sample, total_worth)
vencap10 = VentureCapitalist.new(vc.sample, total_worth)

fund1 = startup1.sign_contract(vencap1, funding.sample, investment)
fund2 = startup2.sign_contract(vencap2, funding.sample, investment)
fund3 = startup3.sign_contract(vencap3, funding.sample, investment)
fund4 = startup4.sign_contract(vencap4, funding.sample, investment)
fund5 = startup5.sign_contract(vencap5, funding.sample, investment)
fund6 = startup6.sign_contract(vencap6, funding.sample, investment)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line