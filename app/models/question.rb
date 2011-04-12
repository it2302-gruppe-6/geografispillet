class Question < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :question, :answer

  belongs_to :country
end
