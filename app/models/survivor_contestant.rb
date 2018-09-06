# == Schema Information
#
# Table name: survivor_contestants
#
#  contestant_id :bigint(8)
#  created_at    :datetime         not null
#  day_out       :integer
#  id            :bigint(8)        not null, primary key
#  jury          :boolean
#  merged        :boolean
#  place         :integer
#  season_id     :bigint(8)
#  tribe         :string
#  updated_at    :datetime         not null
#  votes_against :integer
#
# Indexes
#
#  index_survivor_contestants_on_contestant_id  (contestant_id)
#  index_survivor_contestants_on_season_id      (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (contestant_id => contestants.id)
#  fk_rails_...  (season_id => seasons.id)
#

class SurvivorContestant < ApplicationRecord
  belongs_to :contestant
  belongs_to :season
end
