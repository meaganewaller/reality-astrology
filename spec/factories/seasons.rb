# == Schema Information
#
# Table name: seasons
#
#  created_at         :datetime         not null
#  end_date           :date
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  season_number      :integer
#  start_date         :date
#  television_show_id :bigint(8)
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_seasons_on_television_show_id  (television_show_id)
#
# Foreign Keys
#
#  fk_rails_...  (television_show_id => television_shows.id)
#

FactoryBot.define do
  factory :season do
    name "MyString"
    start_date "2018-09-02"
    end_date "2018-09-02"
    season_number 1
    television_show nil
  end
end
