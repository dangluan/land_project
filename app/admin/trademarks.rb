ActiveAdmin.register Trademark do
  action_item :only => [:new, :show, :edit] do
    link_to('Back to Index',  admin_trademarks_path)
  end
  # form :partial => "form"
  form do |f|
    f.inputs do
      f.input :name
    end
    f.inputs "Images" do
      f.has_many :attachments do |j|
        j.input :asset, as: :file
      end
    end
    f.buttons
  end
end
