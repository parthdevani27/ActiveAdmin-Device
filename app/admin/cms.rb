ActiveAdmin.register Cms do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :slug, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :slug, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
    form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :description,as: :ckeditor 
    end
    f.actions
  end
  
  
end
