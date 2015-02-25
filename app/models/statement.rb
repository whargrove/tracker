class Statement < ActiveRecord::Base
  belongs_to :actor
  belongs_to :activity

  def to_s
    "#{self.actor.name} went #{self.activity.name.downcase}."
  end

end
