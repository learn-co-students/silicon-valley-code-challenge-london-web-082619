class Startup

    @@all = []

    attr_accessor :name
    attr_reader :founder, :domain

    def initialize(name, founder, domain) #Startup.new(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all #Startup.all
        @@all
    end

    def self.find_by_founder(name) #Startup.find_by_founder(name)
        # returns the first startup whose founder's name matches
        @@all.find{|startup| startup.founder == name}
    end


    def pivot(domain, name) #startup.pivot(domain, name)
        #change the domain and name of the startup. 
        #This is the only public method through which the domain can be changed.
        def domain=(domain)
            @domain = domain
        end
        
        self.domain = domain
        self.name = name
    end

    def self.domains #Startup.domains
        # should return an array of all of the different startup domains
        @@all.map{|startup| startup.domain }
    end

    def sign_contract(venture_capitalist, investment_type, amount_invested) #startup.sign_contract(venture_capitalist, investment_type, amount_invested)
        #given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), 
        #creates a new funding round and associates it with that startup and venture capitalist.
        FundingRound.new(self, venture_capitalist, investment_type, amount_invested)
    end

    def num_funding_rounds #startup.num_funding_rounds
       # Returns the total number of funding rounds that the startup has gotten
       FundingRound.all.select{ |round| round.startup == self}.count
    end

    #NOT IN SPEC
    def all_funding_rounds
        FundingRound.all.select{ |fundinground| fundinground.startup == self }
    end

    def total_funds #startup.total_funds
        #Returns the total sum of investments that the startup has gotten
        self.all_funding_rounds.collect{ |fundinground| fundinground.investment }.sum
    end

    def investors #startup.investors
        # returns a unique array of all the venture capitalists that have invested in this company
        self.all_funding_rounds.collect{ |fundinground| fundinground.venture_capitalist }.uniq
    end

    def big_investors
        # Returns a unique array of all the venture capitalists that have invested in this company and are in the Trés Commas club
        self.all_funding_rounds.select{ |vc| vc.total_worth > 1000000000 }.uniq
    end

end
