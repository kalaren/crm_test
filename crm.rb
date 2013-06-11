require_relative "contact"


class  Database
	attr_accessor :contact_array

	def initialize()
		@contact_array = []
	end

	def add(contact)
		@contact_array << contact
	end

	def delete(contactinfo)

		contact_array.each do |contact|
			
			return @contact_array.delete(contact) if contact.display_info.include? contactinfo
			
		end
		return "Invalid Information"
	end	

	def display_all
		all = ""
		contact_array.each do |contact|
			all += contact.display_info
		end
		return all
	end



end