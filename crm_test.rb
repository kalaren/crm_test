require "test/unit"
require_relative "crm"
require_relative "contact"

class CrmTest < Test::Unit::TestCase

	def setup
		@database = Database.new
		@contact = Contact.new(1, "Eric", "Szeto", "Email@mail", "notes")

	end

	def test_is_an_instance_of_database
		assert_instance_of Database, @database
	end

	def test_add_to_database
		#knowing zero contacts are in database, we check to size to see if a contact has been 
		#added 

		@database.add(@contact)

		assert_equal 1, @database.contact_array.size

	end

	def test_delete_contact
		@database.add(@contact)
		assert_equal 1, @database.contact_array.size
		@database.delete("Eric")
		assert_equal 0, @database.contact_array.size
	end

end