# == Schema Information
#
# Table name: theaters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theater < ActiveRecord::Base
  attr_accessible :name, :location
  belongs_to :movie
end
