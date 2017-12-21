require "rails_helper"

describe "User Sign Up", type: :request do
  describe "POST /api/v1/users/" do
    let(:endpoint) { "/api/v1/users/" }
    let(:password) { "password" }
    let(:user) { build(:user, password: password) }

    let(:params) do
      {
        email: user.email,
        password: password,
        password_confirmation: password,
        first_name: user.first_name,
        last_name: user.last_name,
        agreed_to_terms: true
      }
    end

    subject { post endpoint, params: params }

    context "a standard sign up" do
      it_behaves_like "a successful request" do
        let(:doc_message) { "User Sign Up" }
      end

      it "returns the new user info" do
        subject
        expect(json_response[:data]).to include(
          id: User.last.id,
          email: user.email,
          agreed_to_terms: true,
          first_name: user.first_name,
          last_name: user.last_name
        )
      end
    end
  end
end
