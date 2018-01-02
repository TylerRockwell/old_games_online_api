ActiveAdmin.register Product do
  permit_params :title,
                :genre,
                :original_price_in_cents,
                :sale_price_in_cents,
                :slug,
                :release_date,
                :active,
                :url

  index do
    selectable_column
    id_column
    column :title
    column "Genre" do |product|
      product.genre.capitalize
    end
    column("Original Price") do |product|
      humanized_money_with_symbol(product.original_price)
    end
    column("Sale Price") do |product|
      humanized_money_with_symbol(product.sale_price)
    end
    column :slug
    column :release_date
    column :active
    column :url
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
    row :title
    row "Genre" do |product|
      product.genre.capitalize
    end
    row "Original Price" do |product|
      humanized_money_with_symbol(product.original_price)
    end
    row "Sale Price" do |product|
      humanized_money_with_symbol(product.sale_price)
    end
    row :slug
    row :release_date
    row :active
    row :url
    row :created_at
    row :updated_at
    end
  end

  filter :title
  filter :sale_price_in_cents
  filter :release_date
  filter :created_at
  filter :genre
  filter :original_price_in_cents

  form do |f|
    f.inputs 'User Details' do
      f.input :title
      f.input :genre
      f.input :original_price_in_cents
      f.input :sale_price_in_cents
      f.input :slug
      f.input :release_date
      f.input :active
      f.input :url
    end
    f.actions
  end
end

