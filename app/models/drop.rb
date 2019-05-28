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

class Drop < ApplicationRecord
  belongs_to :admin_user, class_name: 'User', optional: true

  validates :title, presence: true, length: { within: 2..40, message: 'Title is too short (minimum of 2 characters required).' }
  validates :description, presence: true
  validates :release_date, presence: true
  validates :release_time, presence: true
  validates :brand, presence: true
  # We want to ensure that prices are not negative
  #   validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { only_decimal: true, greater_than_or_equal_to: 0 }


  # a drop has one cover_image
  # a drop has many product_images
  #   has_many :product_images, dependent: :destroy

  #   list upcoming drops in order of release date and time - nearest release date/time first

  # have option to toggle drop published or not??

  # delete a drop 24 hours after its release date/time has passed
  #   def self.remove_past_drops(drops)

  #   end
end
