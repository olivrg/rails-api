# == Schema Information
#
# Table name: drops
#
#  id           :integer          not null, primary key
#  title        :string
#  release_date :date
#  release_time :time
#  description  :text
#  price        :decimal(, )
#  brand        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :drop do
    title "MyString"
    release_date "2019-05-21"
    release_time "2019-05-21 19:16:51"
    description "MyText"
    price "9.99"
    brand "MyString"
  end
end
