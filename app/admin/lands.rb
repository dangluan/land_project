ActiveAdmin.register Land do
  menu :parent => "Lands"
  action_item :only => :show do
    link_to('Add New',  new_admin_land_path)
  end
  
  action_item :only => [:new, :edit, :show] do
    link_to('Back to Index',  admin_lands_path)
  end
  
  form :partial => "form"
  
  
  index do
    column  :title
    column  :land_position_text
    column  :land_status
    column  :price
    actions
  end
  
  show do
    attributes_table :title, :land_position_text, :land_status, :price do
      row :description do |cont|
        raw cont.description
      end
    end
  end
end
