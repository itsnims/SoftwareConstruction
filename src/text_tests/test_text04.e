note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TEXT04

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := "text"
			create text.add_text(expectedString)
		end

feature -- Test routines

	test_text_get_normal01
			-- New test routine
		note
			testing:  "covers/{TEXT}.get_normal"
		local
			actualSTring: STRING
		do

			actualString := text.get_normal
			assert ("Test 129 implemented", actualString.same_string (expectedString))
		end
feature {NONE}
	text: TEXT
	expectedString: STRING

end


