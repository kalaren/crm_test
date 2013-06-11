require_relative "contact"


class  Database
	attr_accessor :contact_array

	def initialize()
		@contact_array = []
		@invalid = "Invalid Information"
		@attr_list = ["id", "firstname", "lastname", "email", "notes"]
	end

	def add(contact)
		@contact_array << contact
	end

	def delete(contactinfo)
		@contact_array.each do |contact|
			return @contact_array.delete(contact) if contact.check_match(contactinfo)
		end
		return @invalid
	end	

	def display_all
		all = ""
		@contact_array.each do |contact|
			all += contact.display_info
		end
		return all
	end

	def display_contact(contactinfo)
		@contact_array.each do |contact|
			return contact.display_info if contact.check_match(contactinfo)
		end
		return @invalid
	end

	def display_by_attribute(attribute)
		all = ""
		if @attr_list.index(attribute)
			@contact_array.each do |contact|
				all += contact.send(attribute) + "\n"
			end
			return all
		end
		return @invalid
	end

	def modify(attribute, oldvalue, newvalue)
		if @attr_list.index(attribute)
			@contact_array.each do |contact|
			 	if contact.check_match(oldvalue)
			 		contact.send(attribute + '=', newvalue ) 
			 		return contact.display_info
				end
			end
		end
		return @invalid
	end
end