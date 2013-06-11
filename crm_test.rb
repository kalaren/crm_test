require "test/unit"
require_relative "crm"

class CrmTest < Test::Unit::TestCase

	def setup
		@database = Database.new
	end

	def test_is_an_instance_of_database
		assert_instance_of Database, @database
	end

end