# == Schema Information
#
# Table name: platforms
#
#  id    :integer          not null, primary key
#  title :string
#

class Platform < ApplicationRecord
  has_many :product_platforms, dependent: :destroy
  has_many :products, through: :product_platforms, dependent: :destroy

  PLATFORM_LIST = %w(Windows Mac Linux).freeze

  validates :title, uniqueness: true, inclusion: { in: PLATFORM_LIST }
end
