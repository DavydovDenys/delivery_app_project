ActiveAdmin.register DeliveryManager do
  menu if: proc{ current_delivery_manager.enabled? }
  permit_params(:email,
                :enabled,
                :password,
                :password_confirmation,
                :current_sign_in_at,
                :sign_in_count,
                :created_at)

  index do
    selectable_column
    id_column
    column :email
    column :enabled
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :enabled
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    before_action :check_for_administrator

    def check_for_administrator
      new_delivery_manager_session_path unless current_delivery_manager.enabled?
    end
  end

end
