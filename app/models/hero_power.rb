class HeroPower < ApplicationRecord
    belongs_to :hero, class_name: 'HeroPower', optional: true
    belongs_to :power, class_name: 'HeroPower', optional: true
end
