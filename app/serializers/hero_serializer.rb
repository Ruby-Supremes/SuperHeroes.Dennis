class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :supername, :powers
  has_many :powers
end
