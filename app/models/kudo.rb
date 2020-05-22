class Kudo < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :kudo_type
end
