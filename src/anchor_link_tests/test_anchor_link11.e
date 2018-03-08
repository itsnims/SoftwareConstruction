note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK11

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>

		do
			expectedString := "link"
			create alink.make(expectedString,"text")
		end

feature -- Test routines

	test_anchor_link_get_alink01
			-- New test routine
		note
			testing:  "covers/{ANCHOR_LINK}.get_alink"
		local
			actualSTring: STRING
		do

			actualString := alink.get_alink
			assert ("Test 11 implemented", actualString.same_string (expectedString))
		end

feature {NONE}
	alink :ANCHOR_LINK
	expectedString: STRING

end

