ActiveAdmin.register Drop do
  permit_params :title, :description, :release_date, :release_time, :price, :brand
    form do |f|
      f.inputs 'Details' do
      f.input :title
      f.input :description
      f.input :release_date
      f.input :release_time
      f.input :price
      f.input :brand
      end
    actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :release_date
    column :release_time
    column :price
    column :brand
    column :created_at
    column :updated_at

    actions
  end

  filter :id
  filter :title
  filter :description
  filter :release_date
  filter :release_time
  filter :price
  filter :brand
  filter :created_at
  filter :updated_at

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :release_date
      row :release_time
      row :price
      row :brand
      row :created_at
      row :updated_at
    end
  end
end





