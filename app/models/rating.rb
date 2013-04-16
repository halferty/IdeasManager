class Rating < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user
  attr_accessible :comment, :stars
  validates :stars, :inclusion => { :in => 0..9 }
end
