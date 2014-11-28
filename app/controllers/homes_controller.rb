class HomesController < ApplicationController
  def index

  end

  def foundation_info

  end

  def contact
  	@contact = Contact.new
  end

  def save_contact
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		redirect_to homes_path
  	else
  		render :action => :contact
  	end
  end

  private
  def contact_params
  	params.require(:contact).permit!
  end

end