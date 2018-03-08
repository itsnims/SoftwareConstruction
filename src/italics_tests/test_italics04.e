note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ITALICS04

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
			create italics.add_italics(expectedString)
		end

feature -- Test routines

	test_italics_get_italics01
			-- New test routine
		note
			testing:  "covers/{ITALICS}.get_italics"
		local
			actualSTring: STRING
		do

			actualString := italics.get_italics
			assert ("Test 109 implemented", actualString.same_string (expectedString))
		end

feature {NONE}
	italics: ITALICS
	expectedString: STRING

end


