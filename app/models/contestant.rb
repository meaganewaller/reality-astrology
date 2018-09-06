require './lib/sun_sign_calculator'
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

class Contestant < ApplicationRecord
  has_many :survivor_contestants
  has_many :seasons, through: :survivor_contestants
  has_many :big_brother_contestants
  has_many :seasons, through: :big_brother_contestants

  validates :name, uniqueness: { scope: :birthday }

  after_create :get_sun_sign

  def get_sun_sign
    puts "Getting sun sign for #{name}"
    unless birthday.empty?
      @birthday = Date.parse(birthday)
      sun_sign = SunSignCalculator.calculate(@birthday)
      update_attributes(sign: sun_sign)
    end
  end
end
