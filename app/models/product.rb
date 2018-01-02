# == Schema Information
#
# Table name: products
#
#  id                      :integer          not null, primary key
#  title                   :string
#  genre                   :string
#  slug                    :string
#  original_price_in_cents :integer
#  sale_price_in_cents     :integer
#  release_date            :date
#  active                  :boolean
#  url                     :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Product < ApplicationRecord
  has_many :product_platforms, dependent: :destroy
  has_many :platforms, through: :product_platforms, dependent: :destroy

  validates :slug, uniqueness: true
  validates :title, :genre, :slug, :original_price_in_cents, :release_date, :url, presence: true
end
