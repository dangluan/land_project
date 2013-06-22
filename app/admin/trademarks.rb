ActiveAdmin.register Trademark do
  action_item :only => [:new, :show, :edit] do
    link_to('Back to Index',  admin_trademarks_path)
  end
  form :partial => "form"
end
