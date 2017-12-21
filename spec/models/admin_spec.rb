require 'rails_helper'

RSpec.describe Admin, type: :model do
  it { is_expected.to respond_to(:id) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:encrypted_password) }
  it { is_expected.to respond_to(:reset_password_token) }
  it { is_expected.to respond_to(:reset_password_sent_at) }
  it { is_expected.to respond_to(:remember_created_at) }
  it { is_expected.to respond_to(:sign_in_count) }
  it { is_expected.to respond_to(:current_sign_in_at) }
  it { is_expected.to respond_to(:current_sign_in_ip) }
  it { is_expected.to respond_to(:last_sign_in_ip) }
  it { is_expected.to respond_to(:created_at) }
  it { is_expected.to respond_to(:updated_at) }
end
