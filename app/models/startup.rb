class Startup
    attr_accessor :name
    attr_reader :founder, :domain

    @@all = []

    #Working!
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    #Working!
    def pivot(domain, name)
        self.name = name
        @domain = domain
    end

    #Working!
    def self.all()
        @@all
    end

    #Working!
    def self.find_by_founder(name)
        @@all.find { | startup | startup.founder == name }
    end

    #Working
    def self.domains()
        @@all.map { | startup | startup.domain }.uniq
    end

    #Working
    def sign_contract(vc, type, amount)
        FundingRound.new(self, vc, type, amount)
    end

    def funding_rounds 
        FundingRound.all.select { |round| round.startup == self }
    end
    
    #Working
    def num_funding_rounds
        funding_rounds.length
    end

    #Working
    def total_funds
        funding_rounds.reduce(0) { |memo, round| memo += round.investment }
    end

    #Working
    def investors
        funding_rounds.map { |round| round.venture_capitalist }.uniq
    end

    #Working
    def big_investors
        investors.select do |investor|
            VentureCapitalist.tres_commas_club.include?(investor)
        end
    end
end
