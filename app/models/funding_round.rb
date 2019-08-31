class FundingRound

    @@all = []

    attr_accessor :startup, :vc, :investment
    attr_reader :type

    def initialize(startup, vc, type, investment)
        @startup = startup
        @vc = vc
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

end