note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EXTERNAL_LINK13

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
			create elink.adress("link", expectedString)
		end

feature -- Test routines

	test_external_link_get_text01
			-- New test routine
		note
			testing:  "covers/{EXTERNAL_LINK}.get_text"
		local
			actualSTring: STRING
		do

			actualString := elink.get_text
			assert ("Test 57 implemented", actualString.same_string (expectedString))
		end

feature {NONE}
	elink: EXTERNAL_LINK
	expectedString: STRING

end


