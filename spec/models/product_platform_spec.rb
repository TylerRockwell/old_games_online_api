require 'rails_helper'

RSpec.describe ProductPlatform, type: :model do
  it { is_expected.to belong_to(:product) }
  it { is_expected.to belong_to(:platform) }
end
