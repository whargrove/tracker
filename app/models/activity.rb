class Activity < ActiveRecord::Base
  has_many :statements
  has_many :actors, through: :statements
end
