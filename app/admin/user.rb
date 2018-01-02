ActiveAdmin.register User do
  permit_params :email,
                :password,
                :password_confirmation,
                :first_name,
                :last_name,
                :agreed_to_terms

  controller do
    include ActiveAdmin::UserHelper

    def update
      reject_blank_passwords!(params, :user)
      super
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :email
      row :first_name
      row :last_name
      row :agreed_to_terms
      row :current_sign_in_ip
      row :current_sign_in_at
      row :sign_in_count
      row :created_at
      row :updated_at
    end
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :first_name
  filter :last_name

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :agreed_to_terms
    end
    f.actions
  end
end
