class Country < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :name, :population, :area, :currency, :capital

  has_many :questions
end
