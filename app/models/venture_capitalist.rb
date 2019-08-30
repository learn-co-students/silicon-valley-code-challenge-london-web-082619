class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    #Working!
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    #Working!
    def self.all
        @@all
    end

    #Working!
    def self.tres_commas_club
        @@all.select{ | firm | firm.total_worth > 1_000_000_000 }
    end

    #Working
    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
    end

    #Working
    def funding_rounds
        FundingRound.all.select { |round| round.venture_capitalist == self }
    end

    #Working!
    def portfolio
        funding_rounds.map { |round| round.startup }.uniq
    end

    #Working!
    def biggest_investment
        funding_rounds.max_by { |round| round.investment }
    end

    #Working!
    def invested(domain)
        domain_rounds = funding_rounds.select{ |round| round.startup.domain == domain }
        domain_rounds.reduce(0) { |memo, round| memo += round.investment }
    end

end
