class FundingRound
    attr_reader :startup, :venture_capitalist, :type

    @@all = []

    #Working!
    def initialize(startup, vc, type, investment)
        @startup = startup
        @venture_capitalist = vc
        @type = type
        @investment = investment
        @@all << self
    end

    #Working!
    def self.all
        @@all
    end

    #Working
    def investment
        if @investment > 0
            return @investment.to_f().round(2)
        else
            return 0
        end
    end
end
