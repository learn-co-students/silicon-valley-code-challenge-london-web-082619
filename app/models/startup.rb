class Startup

attr_accessor :name
attr_reader :founder, :domain

@@all = []

def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
end

def self.all
    @@all
end

def self.find_by_founder(founder)
    Startup.all.find{|startup| startup.founder == founder}
end

def self.domains
    Startup.all.map{|startup| startup.domain}.uniq
end

def pivot(domain, name)
    @domain = domain
    @name = name
end

def funding_rounds 
    FundingRounds.all.select{|y| y.startup == self}
end


def sign_contract(vc, type, amount)
    FundingRound.new(self, vc, type, amount)
end

def num_funding_rounds
    funding_rounds.length
end

def total_funds
    funding_rounds.sum{|y| y.investment}
end

def investors
    funding_rounds.map{|y| y.venture_capitalist}.uniq
end

def big_investors
    VentureCapitalist.tres_commas_club && investors
end



end

