note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HEADING01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_heading_make01
			-- New test routine
		note
			testing:  "covers/{HEADING}.make"
		local
			head: HEADING
		do
			create head.make("heading", 2)

			assert ("test61_implemented", True)
		end

end





