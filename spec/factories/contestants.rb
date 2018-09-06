# == Schema Information
#
# Table name: contestants
#
#  birthday   :string
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  sign       :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_contestants_on_name_and_birthday  (name,birthday) UNIQUE
#

FactoryBot.define do
  factory :contestant do
    name "MyString"
    birthday "2018-09-02"
    sign "MyString"
  end
end
