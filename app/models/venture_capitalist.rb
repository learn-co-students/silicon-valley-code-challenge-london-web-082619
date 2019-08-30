
class VentureCapitalist
    attr_reader :name , :total_worth

    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.tres_commas_club
        self.all.select {|v| v.total_worth > 1000000000 }
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(self, startup, type, investment)
    end

    def startups
        funding_rounds.map {|round| round.startup}
    end

    def funding_rounds
        FundingRound.all.select {|round| round.venture_capitalist == self}
    end

    def portfolio
        startups.uniq
    end

    def biggest_investment
        portfolio.max_by {|startup| startup.investment}
    end

    def invested(domain)
        startups2 = startups.select {|startup| startup.domain == domain}
        startups2.sum {|startup| startup.total_funds}
    end

    def self.all
        @@all
    end
end
