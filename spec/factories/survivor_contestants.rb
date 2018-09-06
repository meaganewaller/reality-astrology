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

FactoryBot.define do
  factory :survivor_contestant do
    contestant nil
    season nil
    place 1
    jury false
    votes_against 1
    day_out 1
    tribe "MyString"
    merged false
  end
end
