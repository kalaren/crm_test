require_relative "contact"


class  Database
	attr_accessor :contact_array

	def initialize()
		@contact_array = []
	end

	def add(contact)
		@contact_array << contact
	end



end