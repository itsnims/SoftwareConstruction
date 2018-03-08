note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_UNDERLINE01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_underline_add_underline01
			-- New test routine
		note
			testing:  "covers/{UNDERLINE}.add_underline"
		local
			underline: UNDERLINE
		do
			create underline.add_underline("text")
			assert ("Test 133 implemented", True)
		end

end


