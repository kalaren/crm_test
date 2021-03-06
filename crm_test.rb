require "test/unit"
require_relative "crm"
require_relative "contact"

class CrmTest < Test::Unit::TestCase

	def setup
		@database = Database.new
		@contact = Contact.new(1, "Eric", "Szeto", "Email@mail", "notes")
		@contact1 = Contact.new(2, "Lakshay", "Khatter", "gmail" , "notes")
		@database.add(@contact)
		@database.add(@contact1)
	end

	def test_is_an_instance_of_database
		assert_instance_of Database, @database
	end

	def test_add_to_database
		#knowing zero contacts are in database, we check to size to see if a contact has been 
		#added 
		@database = Database.new
		@database.add(@contact)
		assert_equal 1, @database.contact_array.size
	end

	def test_delete_contact
		@database = Database.new
		@database.add(@contact)
		assert_equal 1, @database.contact_array.size
		@database.delete("Eric")
		assert_equal 0, @database.contact_array.size
	end

	def test_delete_with_invalid_info
		@database = Database.new
		@database.add(@contact)
		assert_equal "Invalid Information", @database.delete("ic")

	end

	
	def test_display_all_output
		assert_equal "1 Eric Szeto Email@mail notes\n2 Lakshay Khatter gmail notes\n",@database.display_all
	end

	def test_display_specific_contact
		assert_equal "2 Lakshay Khatter gmail notes\n", @database.display_contact("Lakshay")
	end

	def test_display_specific_contact_with_invalid_info
		assert_equal "Invalid Information", @database.display_contact("shay")
	end

	def test_display_attributes_of_contacts
		assert_equal "Eric\nLakshay\n", @database.display_by_attribute("firstname")
	end

	def test_display_attributes_of_contacts_with_invalid_info
		assert_equal "Invalid Information", @database.display_by_attribute("fisttname")
	end

	def test_modify_attribute_with_valid_information
		assert_equal "1 Dave Szeto Email@mail notes\n", @database.modify("firstname", "Eric", "Dave")
	end

	def test_modify_attribute_with_invalid_attribute
		assert_equal "Invalid Information", @database.modify("ftname", "Eric", "Dave")
	end

	def test_modify_attribute_with_invalid_old_value
		assert_equal "Invalid Information", @database.modify("firstname", "Erc", "Dave")
	end

	def test_addfail


		assert_equal "Invalid Information", @database.add("pie")

	end



end