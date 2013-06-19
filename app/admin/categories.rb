ActiveAdmin.register Category do
  action_item :only => :show do
    link_to('Add New',  new_admin_category_path)
  end
  
  action_item :only => :new do
    link_to('Back to Index',  admin_categories_path)
  end

end
