class VentureCapitalist

    @@all=[]

    attr_accessor :name, :total_worth

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth #Checks if the total_worth is greater than 0
        @@all << self
    end

    def self.all
        @@all
    end

    def self.trees_commas_club
        self.all.filter{ |vc| vc.total_worth > 1000000000 }
    end

    def trees_commas_club
        @total_worth > 1000000000
    end

    def offer_contract(startup, type, investment) #! Needs to do type checking
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select{ |round| round.vc == self }
    end

    def portfolio
        funding_rounds.map{|round| round.startup}.uniq
    end

    def biggest_investment
        funding_rounds.max_by{|round| round.investment}
    end

    def invested(domain)
        rounds_in_domain = funding_rounds.select{|round| round.startup.domain == domain}
        rounds_in_domain.map{|round| round.investment}.sum
    end

end