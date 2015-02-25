class Actor < ActiveRecord::Base
  has_many :statements
  has_many :activities, through: :statements
end
