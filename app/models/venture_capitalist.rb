class VentureCapitalist

    attr_accessor :total_worth
    attr_reader :name

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|baller| baller.total_worth >= 1000000000}
    end

    def funding_rounds 
        FundingRounds.all.select{|y| y.startup == self}
    end
        def offer_contract(startup, type, investment)
            FundingRound.new(startup, self, type, investment)
        end

        def funding_rounds
            FundingRounds.all.select{|y| y.venture_capitalist == self}
        end

        def portfolio
            funding_rounds.map{|y| y.startup}.uniq
        end

        def biggest_investment
            FundingRound.all.select{|y| y.investment == self}.max
        end

        def invested(domain)
            domain.all.map{|y| y.investment}.sum
        
        end




end
