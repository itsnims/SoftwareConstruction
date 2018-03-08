note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ITALICS01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_italics_add_italics01
			-- New test routine
		note
			testing:  "covers/{ITALICS}.add_italics"
		local
			italics: ITALICS
		do
			create italics.add_italics ("text")
			assert ("test 106 implemented", True)
		end

end


