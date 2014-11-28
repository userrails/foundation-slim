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
  	@contact.save
  		respond_to do |format|
        format.js
      end  	 
  end

  private
  def contact_params
  	params.require(:contact).permit!
  end
end