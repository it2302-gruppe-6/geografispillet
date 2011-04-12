class Country < ActiveRecord::Base
  attr_accessible :name, :population, :area, :currency, :capital

  has_many :questions
end
