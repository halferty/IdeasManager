class Idea < ActiveRecord::Base
  letsrate_rateable 'stars'
  belongs_to :user
  has_many :ratings
  attr_accessible :content, :title
  validates :title, :presence => true
  validates :content, :presence => true
end
