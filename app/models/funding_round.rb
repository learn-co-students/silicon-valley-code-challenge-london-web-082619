class FundingRound

    attr_reader :startup, :venture_capitalist, :investment
    attr_accessor :round, :amount

    @@all = []

    def initialize(startup, vc, type, investment)
        @startup = startup
        @venture_capitalist = vc
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

    



end
