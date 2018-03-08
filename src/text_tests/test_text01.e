note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TEXT01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_text_add_text01
			-- New test routine
		note
			testing:  "covers/{TEXT}.add_text"
		local
			text: TEXT
		do
			create text.add_text ("text")
			assert ("Test 126 implemented", True)
		end

end


