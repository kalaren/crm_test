require "test/unit"
require_relative "contact"

class ContactTest < Test::Unit::TestCase

	def setup
		@contact = Contact.new(1, "Eric", "Szeto", "Email@mail", "notes")
	end

	def test_make_new_contact_correct_class
		assert_instance_of(Contact, @contact)
	end
end