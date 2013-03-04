# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  runtime    :string(255)
#  rating     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#

class Movie < ActiveRecord::Base
  attr_accessible :title, :runtime, :rating, :image
  has_many :theaters
  has_many :tickets
end
