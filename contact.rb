
class Contact

	def initialize(id, firstname, lastname, email, notes) 
		@id = id
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes


	end


	def display_info
		return @id.to_s + " " + @firstname + " " + @lastname + " " + @email + " " + @notes	+ "\n" 
	end



end