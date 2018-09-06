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

FactoryBot.define do
  factory :big_brother_contestant do
    contestant nil
    season nil
    place 1
    jury false
    votes_against 1
    day_out 1
  end
end
