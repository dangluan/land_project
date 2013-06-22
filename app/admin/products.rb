ActiveAdmin.register Product do
  menu :parent => "Products", :priority => 2
  action_item :only => :show do
    link_to('Add New',  new_admin_product_path)
  end
  
  action_item :only => [:new, :edit, :show] do
    link_to('Back to Index',  admin_products_path)
  end
  
  form :partial => "form"
  
  index do
    selectable_column
    column :id
    column :name
    column :price
    column :date_of_manufacture
    column :date_of_expiration
    column :manufacturer
    column :description do |post|
      raw truncate(post.description, omision: "...", length: 50)
    end
    actions
  end
  
  show do
    attributes_table :id, :name, :price, :date_of_manufacture, :date_of_expiration, :manufacturer do
      row :description do |cont|
        raw cont.description
      end
    end
  end
end
