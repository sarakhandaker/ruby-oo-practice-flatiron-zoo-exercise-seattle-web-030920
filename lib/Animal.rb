class Animal
    attr_accessor :weight, :zoo
    attr_reader :nickname, :species
@@all=[]
def initialize (species, weight, nickname)
    @species=species
    @nickname=nickname
    @weight=weight
    @@all <<self
end

def self.all
    @@all
end

def self.find_by_species(species)
    @@all.select{|ani| ani.species==species}
end

end
