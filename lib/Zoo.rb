class Zoo
attr_accessor :location, :name
@@all=[]
def initialize (name, location)
    @name=name
    @location=location
    @@all <<self
end

def self.all
    @@all
end

def animals
    Animal.all.select{|ani| ani.zoo == self}
end

def animal_species
    self.animals.map{|ani| ani.species}.uniq
end

def find_by_species (species)
    self.animals.select{|ani| ani.species==species}
end

def animal_nicknames
    self.animals.map{|ani| ani.nickname}
end

def self.find_by_location (loc)
    @@all.select{|zoo| zoo.location== loc}
end

end
