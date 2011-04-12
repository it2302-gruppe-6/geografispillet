class Question < ActiveRecord::Base
  attr_accessible :question, :answer

  belongs_to :country
end
