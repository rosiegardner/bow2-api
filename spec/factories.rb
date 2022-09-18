FactoryBot.define do
  factory(:beast) do
    daemon {"hellhound"}
    breed {Faker::Games::WarhammerFantasy.creature}
    name {Faker::Creature::Dog.name}
    age {Faker::Number.between(from: 1, to: 1000)}
    desc {Faker::Games::WorldOfWarcraft.quote}
    strength {Faker::Number.between(from: 1, to: 10)}
    weapon {Faker::Games::DnD.ranged_weapon}
  end
end