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

  monetize :original_price_in_cents,
           as: "original_price",
           allow_nil: true,
           numericality: { greater_than_or_equal_to: 0 }

  monetize :sale_price_in_cents,
           as: "sale_price",
           allow_nil: true,
           numericality: { greater_than_or_equal_to: 0 }
end
