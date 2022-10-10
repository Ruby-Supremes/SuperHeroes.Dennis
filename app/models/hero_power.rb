class HeroPower < ApplicationRecord

    belongs_to :hero
    belongs_to :power
    enum :strength, [:Strong, :Weak, :Avarage]
end
