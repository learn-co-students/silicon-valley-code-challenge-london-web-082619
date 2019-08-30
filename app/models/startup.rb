class Startup
    attr_reader :name , :founder, :domain

    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.domains
        self.all.map {|startup| startup.domain}.uniq
    end

    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end

    def sign_contract(venturer, type, investment)  
        FundingRound.new(venturer, self, type, investment)
    end

    def fundingrounds
        FundingRound.all.select {|round| round.startup == self}
    end

    def num_funding_rounds     
        fundingrounds.length
    end

    def total_funds    
        fundingrounds.sum {|round| round.investment}
    end

    def investors              
        fundingrounds.map {|round| round.venture_capitalist}.uniq
    end

    def big_investors         
        investors.select {|investor| investor.total_worth > 1000000000}
    end

    def self.all
        @@all
    end
end
