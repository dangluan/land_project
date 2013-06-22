ActiveAdmin.register Support do
  action_item :only => :show do
    link_to('Add New',  new_admin_support_path)
  end
  
  action_item :only => [:new, :edit, :show] do
    link_to('Back to Index',  admin_supports_path)
  end
end
