class Startup

    @@all=[]

    attr_accessor :name
    attr_reader :founder, :domain

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot=(domain=nil, name=nil) #! needs to be fixed
        #HMMMMMMM, lot of work needs to be done here
        #Only public method through with domain and name can be changed. 
        @name = name
        @domain = nam
    end

    def self.find_by_founder(name) #! needs to be updated
        #Finds all instances of Startup where the founder has the given name 
        ##Add a way to make this return false if the founder is not found
        self.all.find{ |startup| startup.founder == name }
    end

    def sign_contract(vc, investment_type, investment) #! Needs type checking
        #Creates a FundingRound with the given vc, investment_type and amount invested
        #investment_type needs to assert string type
        #amount needs to assert float type
        FundingRound.new(self, vc, investment_type, investment)
    end

    def funding_rounds
        #Returns an array of all the funding rounds recieved
        FundingRound.all.select{ |round| round.startup == self }
    end

    def num_funding_rounds
        #The number of funding rounds recieved
        funding_rounds.length
    end

    def total_funds
        #Total amount of funds recieved
        funding_rounds.sum{ |round| round.investment }
    end

    def investors
        #Returns all the investors who have invested in this company
        funding_rounds.map{ |round| round.vc }.uniq
    end

    def big_investors
        #Returns investors who have invested in this comapny and have a net worth greater than 1 billion
        investors.select{ |vc| VentureCapitalist.trees_commas_club.include?(vc) }
    end

end