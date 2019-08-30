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
        Startup.all.find {|startup| startup.founder == founder}
    end

    def self.domains
        Startup.all.map {|startup| startup.domain == domain}.uniq
    end

    def pivot(domain, name)
        @name = name
        @domain = domain
    end
    # def intializer(startup, vc, type, investment)
    #     @startup = startup
    #     @venture_capitalist = vc
    #     @type = type
    #     @investment = investment
    #     @@all << self
    # end

    def sign_contract(vc, type, inv)
        FundingRound.new(self, vc, type, inv)
    end

    def funding_rounds
        FundingRound.all.select { | round | round.startup == self}
    end

    def num_funding_rounds
        funding_rounds.length
    end 

    def total_funds
        funding_rounds.sum { |round| round.investment }
    end

    def investors
        funding_rounds.map { | inv | inv.venture_capitalist }.uniq
    end

    def big_investors
        VentureCapitalist.tres_commas_club && investors
    end
        


    # private

    # def name=(name)
    #     @name = name
    # end

    # def domain=(domain)
    #     @domain = domain
    # end



end
