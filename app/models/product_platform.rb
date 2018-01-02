# == Schema Information
#
# Table name: product_platforms
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  platform_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductPlatform < ApplicationRecord
  belongs_to :product
  belongs_to :platform

  validates :product_id, uniqueness: { scope: :platform_id }
end
