class School < ActiveRecord::Base

  belongs_to :country
  has_many :students, class_name: 'Person'

end
