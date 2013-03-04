# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  user_id    :integer
#  is_bought  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ticket < ActiveRecord::Base
  attr_accessible :is_bought
  belongs_to :user
  belongs_to :movie
end
