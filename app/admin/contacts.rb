ActiveAdmin.register Contact do
  action_item :only => :show do
    link_to('Add New',  new_admin_contact_path)
  end
  
  action_item :only => [:new, :edit, :show] do
    link_to('Back to Index',  admin_contacts_path)
  end
  
  
  index do
    selectable_column
    column :id
    column :full_name
    column :email
    column :phone
    column :content do |post|
      raw truncate(post.content, omision: "...", length: 50)
    end
    actions
  end
  
  show do
    
    attributes_table :full_name, :phone, :email do
      row :content do |cont|
        raw cont.content
      end
    end
  end
end
