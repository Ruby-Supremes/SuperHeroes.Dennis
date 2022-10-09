class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :supername
  has_many :powers , through: :hero_powers
end
