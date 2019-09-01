class VentureCapitalist
@@all = [] 

attr_accessor :name, :total_worth
    def initialize(name, total_worth) #VentureCapitalist.new(name, total_worth)
        @name = name 
        @total_worth = total_worth 
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def self.tres_commas_club
        @@all.select{|vc| vc.total_worth > 1000000000.0}
    end 

    def offer_contract(type, amount)
        FundingRound.new(self, startup, type, amount)
    end 

    def funding_rounds
        FundingRound.all.select{|round| round.venture_capitalist == self}
    end  

    def portfolio 
        funding_rounds.map{|round| round.startup}.uniq
    end 

    def biggest_investment 
        funding_rounds.max_by{|round| round.investment}
    end 

    def startups
        funding_rounds.map {|round| round.startup}
    end

    def invested(domain)
        startups2 = startups.select {|startup| startup.domain == domain}
        startups2.sum {|startup| startup.total_funds}
    end
end
