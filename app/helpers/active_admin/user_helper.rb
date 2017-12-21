module ActiveAdmin
  module UserHelper
    def reject_blank_passwords!(params, model)
      if params[model][:password].blank?
        %w(password password_confirmation).each { |field| params[model].delete(field) }
      end
    end
  end
end
