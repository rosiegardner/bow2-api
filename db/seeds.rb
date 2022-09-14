class Seed

  def self.begin
    seed = Seed.new
    seed.generate_beasts
  end

  def generate_beasts
    30.times do |i|
      beast = Beast.create!(
        daemon: "hellhound",
        breed: Faker::Games::WarhammerFantasy.creature,
        name: Faker::Creature::Dog.name,
        age: Faker::Number.between(from: 1, to: 1000),
        desc: Faker::Games::WarhammerFantasy.quote
      )
      puts "Beast #{i}: Daemon: #{beast.daemon}, Breed: #{beast.breed}, Name: #{beast.name}, Age: #{beast.age}, Desc: #{beast.desc}."
    end

    30.times do |i|
      beast = Beast.create!(
        daemon: "shadow cat",
        breed: Faker::Games::ElderScrolls.creature,
        name: Faker::Creature::Cat.name,
        age: Faker::Number.between(from: 1, to: 1000),
        desc: Faker::Games::WorldOfWarcraft.quote
      )
      puts "Beast #{i}: Daemon: #{beast.daemon}, Breed: #{beast.breed}, Name: #{beast.name}, Age: #{beast.age}, Desc: #{beast.desc}."
    end
  end
end

Seed.begin
