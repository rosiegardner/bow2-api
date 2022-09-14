FactoryBot.define do
  factory(:beast) do
    daemon {"hellhound"}
    breed {Faker::Games::WarhammerFantasy.creature}
    name {Faker::Creature::Dog.name}
    age {Faker::Number.between(from: 1, to: 1000)}
    desc {Faker::Games::WarhammerFantasy.quote}
  end
end