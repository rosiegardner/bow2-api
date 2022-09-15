class Beast < ApplicationRecord
  validates :daemon, presence: true
  validates :breed, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :desc, presence: true
  validates :strength, presence: true
  validates :strength, numericality: { only_integers: true, greater_than: 0 }
  validates :weapon, presence: true

  def self.search(search)
    if search
      where(["name ILIKE ?","%#{search}%"])
    else
      all
    end
  end
end