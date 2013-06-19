ActiveAdmin.register Land do
  action_item :only => :show do
    link_to('Add New',  new_admin_land_path)
    link_to("Back to Index", admin_lands_path)
  end
  
  action_item :only => :new do
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
end
