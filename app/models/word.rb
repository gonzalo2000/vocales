class Word < ActiveRecord::Base
  validates :term, presence: true
  
end
