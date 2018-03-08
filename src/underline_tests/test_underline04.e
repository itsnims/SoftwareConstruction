note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_UNDERLINE04

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
			create underline.add_underline(expectedString)
		end

feature -- Test routines

	test_underline_get_underline01
			-- New test routine
		note
			testing:  "covers/{UNDERLINE}.get_underline"
		local
			actualSTring: STRING
		do

			actualString := underline.get_underline
			assert ("Test 136 implemented", actualString.same_string (expectedString))
		end

feature {NONE}
	underline: UNDERLINE
	expectedString: STRING


end


