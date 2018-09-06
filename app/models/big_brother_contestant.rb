# == Schema Information
#
# Table name: big_brother_contestants
#
#  contestant_id :bigint(8)
#  created_at    :datetime         not null
#  day_out       :integer
#  id            :bigint(8)        not null, primary key
#  jury          :boolean
#  place         :integer
#  season_id     :bigint(8)
#  updated_at    :datetime         not null
#  votes_against :integer
#
# Indexes
#
#  index_big_brother_contestants_on_contestant_id  (contestant_id)
#  index_big_brother_contestants_on_season_id      (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (contestant_id => contestants.id)
#  fk_rails_...  (season_id => seasons.id)
#

class BigBrotherContestant < ApplicationRecord
  belongs_to :contestant
  belongs_to :season
end
