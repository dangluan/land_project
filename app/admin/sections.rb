ActiveAdmin.register Section do
  menu :parent => "Products", :priority => 1
  action_item :only => :show do
    link_to('Add New',  new_admin_section_path)
  end
  
  action_item :only => [:new, :edit, :show] do
    link_to('Back to Index',  admin_sections_path)
  end
end
