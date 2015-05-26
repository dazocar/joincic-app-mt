class Person < ActiveRecord::Base

  belongs_to :school

  def country
    self.school.country
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
