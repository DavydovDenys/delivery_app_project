ActiveAdmin.register DeliveryManager do
  permit_params(:email,
                :password,
                :password_confirmation,
                :created_at,
                :enabled)

  index do
    selectable_column
    id_column
    column :email
    column :enabled
    column :created_at
    actions
  end

  filter :email
  filter :created_at
  filter :enabled

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
