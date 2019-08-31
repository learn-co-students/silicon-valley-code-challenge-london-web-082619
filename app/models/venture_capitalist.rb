class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth) #VentureCapitalist.new(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all #VentureCapitalist.all
        @@all
    end

    def self.tres_commas_club #VentureCapitalist.tres_commas_club
        #returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 total_worth)
        @@all.select{ |vc| vc.total_worth > 1000000000 }
    end

    def offer_contract(startup) #VentureCapitalist.offer_contract
        #given a startup object, type of investment (as a string), and the amount invested (as a float), 
        #mcreates a new funding round and associates it with that startup and venture capitalist.
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds #VentureCapitalist.funding_rounds
        #returns an array of all funding rounds for that venture capitalist
        FundingRound.all.select{ |fr| fr.venture_capitalist == self }
    end

    def portfolio #VentureCapitalist.portfolio
        #Returns a unique list of all startups this venture capitalist has funded
        self.funding_rounds.collect{ |fr| fr.startup }.uniq
    end

    def biggest_investment #VentureCapitalist.biggest_investment
        #returns the largest funding round given by this venture capitalist
        self.funding_rounds.max{ |a, b| a.investment <=> b.investment }
    end

    def invested(domain) #VentureCapitalist.invested(domain)
        #given a domain string, returns the total amount invested in that domain
        self.funding_rounds.collect{ |fr| fr.investment }.sum
    end

end
