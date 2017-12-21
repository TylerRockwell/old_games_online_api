class AdminSeeds
  class << self
    def run
      create_admins
    end

    private

    def create_admins
      Admin.find_or_initialize_by(email: "admin@example.com").update!( password: "password", password_confirmation: "password")
    end
  end
end

