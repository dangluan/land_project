class ClientsController < ApplicationController
  def index
    @lands = Category.find_by_code(params[:type]).lands#.includes(:album_photos).order("created_at DESC")
    render :layout => false
  end
  
  def home
    render :layout => false if request.xhr?
  end
  
  
  def show_map
    @land = Land.find(params[:id])
    render :partial => '/clients/show_map', locals:{land: @land} ,layout: false
  end
  
  def land_detail
    @land = Land.find(params[:id])
    render :partial => '/clients/show_land_detail', :locals => {land: @land}
  end
  
  def feed_back
    render :partial => '/shared/feed_back'
  end
  
  def new_contact
    @contact = Contact.new
    render :partial => '/shared/contact', :locals => { contact: @contact }
  end
  
  def add_contact
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :partial => '/shared/thank_for_add_contact', locals: {contact: @contact}
    else
      render :action => 'new_contact', layout: false
    end
  end
end
