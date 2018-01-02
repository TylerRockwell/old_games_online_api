class UserSeeds
  class << self
    def run
      create_users
    end

    private

    def create_users
      10.times do |n|
        name = Faker::RickAndMorty.character
        User.find_or_initialize_by(email: "user#{n}@example.com")
            .update!(password: 'password',
                     password_confirmation: 'password',
                     agreed_to_terms: true,
                     first_name: name.split(' ').first,
                     last_name: name.split(' ').last)
      end
    end
  end
end
