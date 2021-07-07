class VentureCapitalist

    attr_reader :name
    attr_accessor :total_worth

    @@all = []

    def initialize(name, worth)
        @name = name
        @total_worth = worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|baller| baller.total_worth >= 1000000000}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    def funding_rounds
        FundingRound.all.select { | a | a.venture_capitalist == self}
    end

    def portfolio
        funding_rounds.map { |a| a.startup }.uniq
    end

    def startups
        funding_rounds.map { | a | a.startup}
    end


    def biggest_investment
        portfolio.max_by { | a | a.investment }
    end

    def invested(domain)
        startups2 = startups.select {|startup| startup.domain == domain}
        startups2.sum {|startup| startup.total_funds}
    end


end
