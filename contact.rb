
class Contact
	attr_accessor :id, :firstname, :lastname, :email, :notes

	def initialize(id, firstname, lastname, email, notes) 
		@id = id.to_s
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes


	end


	def display_info
		return @id.to_s + " " + @firstname + " " + @lastname + " " + @email + " " + @notes	+ "\n" 
	end

	def check_match(info)
		return true if (@id == info || @firstname == info || @lastname == info || @email == info || @notes == info)
	end



end