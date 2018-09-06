# == Schema Information
#
# Table name: season_contestants
#
#  contestant_id :bigint(8)
#  created_at    :datetime         not null
#  id            :bigint(8)        not null, primary key
#  place         :integer
#  season_id     :bigint(8)
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_season_contestants_on_contestant_id  (contestant_id)
#  index_season_contestants_on_season_id      (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (contestant_id => contestants.id)
#  fk_rails_...  (season_id => seasons.id)
#

class SeasonContestant < ApplicationRecord
  belongs_to :contestant
  belongs_to :season
end
