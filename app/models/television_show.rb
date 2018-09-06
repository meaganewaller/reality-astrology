# == Schema Information
#
# Table name: television_shows
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class TelevisionShow < ApplicationRecord
  has_many :seasons
end
