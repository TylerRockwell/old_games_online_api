class ProductSeeds
  class << self
    def run
      Product.destroy_all
      create_products
    end

    private

    def create_products
      30.times do
        title = "#{Faker::Ancient.primordial}, Keeper of the #{Faker::Zelda.item}"
        price = rand(10_00..60_00)
        product = Product.create(
          title: title,
          genre: %w(action adventure role-playing shooter simulation).sample,
          slug: slug(title),
          original_price_in_cents: price,
          sale_price_in_cents: get_sale_price(price),
          release_date: Faker::Time.between(2.years.ago, Date.current, :all).to_date,
          active: true,
          url: "/products/#{slug(title)}"
        )
        set_platforms(product)
      end
    end

    def get_sale_price(price)
      sale = [true, false, false].sample # On average 1/3 items will be on sale
      sale ? price * 0.8 : price
    end

    def slug(title)
      title.downcase.tr(',', '').tr(' ', '-')
    end

    def set_platforms(product)
      product.platforms << random_platforms
    end

    def random_platforms
      Platform.limit(rand(1..3))
    end
  end
end

