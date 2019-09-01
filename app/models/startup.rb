require 'pry'
class Startup
@@all = []
attr_accessor :name 
attr_reader :founder, :domain
    def initialize(name, founder, domain) #Startup.new(name, founder, domain)
        @name = name 
        @founder = founder
        @domain = domain
        @@all << self
    end 

    def self.all 
        @@all 
    end 

     
    def pivot(domain, name)
        def domain=(domain)
            @domain = domain 
        end  
        self.domain = domain
        self.name = name
    end 
   

    def self.find_by_founder(name)
       @@all.find{|startup| startup.founder == name}
    end 

    def self.domains
    @@all.map{|startup| startup.domain}
    end 

    def sign_contract(vc, type, amount)
        Fundinground.new(self, vc, type, amount)
    end 
   
    def fundingrounds 
        FundingRound.all.select{|round| round.startup == self}
    end 

    def num_funding_rounds
        fundingrounds.count
    end 

    def total_funds
        fundingrounds.sum{|round| round.investment}
    end 

    def investors 
        fundingrounds.map{|round| round.venture_capitalist}.uniq #single instance 
    end 

    def big_investors 
       #investors.select{|investor| investor.total_worth > 1000000000}
       investors.select{|investor| VentureCapitalist.tres_commas_club.include?(investor)}
    end 
        
end
