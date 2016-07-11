class Word < ActiveRecord::Base
  validates :term, presence: true
  validates :image, presence: true
  
  before_validation :strip_whitespace, :only => [:term]
  
  mount_uploader :image, ImageUploader

  private
  def strip_whitespace
    self.term = self.term.strip unless self.term.nil?
  end
end
