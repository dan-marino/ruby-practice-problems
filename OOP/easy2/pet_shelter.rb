# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

class Shelter
  attr_reader :owner, :pet

  @@owners_hash = {}

  def adopt(owner, pet)
    @owner = owner
    @pet = pet
    if @@owners_hash.has_key?(@owner.name)
      @@owners_hash[@owner.name] << [@pet.type, @pet.name]
    else
      @@owners_hash[@owner.name] = []
      @@owners_hash[@owner.name] << [@pet.type, @pet.name]
    end
  end

  def print_adoptions
    @@owners_hash.each do |key, value|
      puts "#{key} has adopted the following pets:"
      value.each do |subarr|
        puts "a #{subarr[0]} named #{subarr[1]}"
      end
      puts ''
    end
  end

end

class Pet
  attr_reader :type, :name
  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner < Shelter
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def number_of_pets
    @@owners_hash[@name].count
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)


shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."