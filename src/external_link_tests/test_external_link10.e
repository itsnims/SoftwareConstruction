note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EXTERNAL_LINK10

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
			create link.adress(expectedString, "text")
		end

feature -- Test routines

	test_external_link_get_elink01
			-- New test routine
		note
			testing:  "covers/{EXTERNAL_LINK}.get_elink"
		local
			actualString: STRING
		do
			actualString := link.get_elink
			assert ("test54_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	link :EXTERNAL_LINK
	expectedString : STRING

end


