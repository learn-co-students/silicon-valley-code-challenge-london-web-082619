class FundingRound

    @@all = []

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    def initialize(startup, venture_capitalist, type, investment) #FundingRound.new(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all #FundingRound.all
        @@all
    end

    



end
