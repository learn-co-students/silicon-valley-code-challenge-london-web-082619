require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup_names = ["Activigen", "Synopsis", "Transferboss", "Moodpal", "Shabang", "EPLAssociates", "Twatter", "Navipro", "Culturetwist", "Fitbook"]
founder_names = ["Steve", "KG", "Michelle", "JB", "Takeshi", "Milen", "Christopher", "Jeremy", "Elizabeth", "Louis", "Mike"]
industry = ["Biochemicals", "SAAS", "Healthcare", "Law", "Fintech", "Retail", "Banking"]

10.times do
  Startup.new(startup_names.sample, founder_names.sample, industry.sample)
end


vc_names = ["John", "Peter", "Bob", "Steve", "Johny", "Paul", "Lee", "Jim"]

10.times do
  VentureCapitalist.new(vc_names.sample, rand(2000000000))
end


funding_types = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]
invalid_funding_types = ["Fish", "Mumbai", "Life"]

Startup.all.each do |startup|
  rand(10).times do
    vc = VentureCapitalist.all.sample
    investment = vc.total_worth * rand(0.2)
    startup.sign_contract(vc, funding_types.sample, investment)
  end  
end

startup = Startup.all.sample
vc = VentureCapitalist.all.sample
funding_round = FundingRound.all.sample

startup.funding_rounds


binding.pry

funding_types