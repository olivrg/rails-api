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

require 'rails_helper'

RSpec.describe Drop, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
