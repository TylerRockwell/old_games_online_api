require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to respond_to(:title) }
  it { is_expected.to respond_to(:genre) }
  it { is_expected.to respond_to(:slug) }
  it { is_expected.to respond_to(:original_price_in_cents) }
  it { is_expected.to respond_to(:sale_price_in_cents) }
  it { is_expected.to respond_to(:release_date) }
  it { is_expected.to respond_to(:active) }
  it { is_expected.to respond_to(:url) }

  it { is_expected.to have_many(:product_platforms) }
  it { is_expected.to have_many(:platforms) }

  it { is_expected.to validate_uniqueness_of(:slug) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:genre) }
  it { is_expected.to validate_presence_of(:slug) }
  it { is_expected.to validate_presence_of(:original_price_in_cents) }
  it { is_expected.to validate_presence_of(:release_date) }
  it { is_expected.to validate_presence_of(:url) }
end
