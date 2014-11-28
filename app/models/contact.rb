class Contact < ActiveRecord::Base
	validates :name, :email, :address, :message, :presence => true
end
