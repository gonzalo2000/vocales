class Word < ActiveRecord::Base
  validates :term, presence: true
  
  before_validation :strip_whitespace, :only => [:term]

  private
  def strip_whitespace
    self.term = self.term.strip unless self.term.nil?
  end
end
