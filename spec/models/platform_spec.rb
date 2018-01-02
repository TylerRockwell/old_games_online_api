require 'rails_helper'

RSpec.describe Platform, type: :model do
  it { is_expected.to respond_to(:title) }

  it { is_expected.to have_many(:product_platforms) }
  it { is_expected.to have_many(:products) }

  it { is_expected.to validate_uniqueness_of(:title) }
  it { is_expected.to validate_inclusion_of(:title).in_array(Platform::PLATFORM_LIST) }
end
