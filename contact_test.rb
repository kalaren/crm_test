require "test/unit"
require_relative "contact"

class ContactTest < Test::Unit::TestCase

	def setup
		@contact = Contact.new(1, "Eric", "Szeto", "Email@mail", "notes")
	end

	def test_make_new_contact_correct_class
		assert_instance_of(Contact, @contact)
	end

	def test_displayinfo
		assert_equal "1 Eric Szeto Email@mail notes\n",  @contact.display_info
	end

	def test_check_match
		assert_equal true, @contact.check_match("Eric")
		assert_equal nil, @contact.check_match("ic")
	end
end