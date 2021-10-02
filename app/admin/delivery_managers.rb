ActiveAdmin.register DeliveryManager do
  menu if: proc{ current_delivery_manager.enabled? }
  permit_params(:email,
                :enabled,
                :password,
                :password_confirmation,
                :created_at)

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
