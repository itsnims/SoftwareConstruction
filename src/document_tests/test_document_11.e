note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_DOCUMENT_11

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := ""
			create document.make(expectedString,"page title")
		end

feature -- Test routines

	test_document_get_name01
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_name"
		local
			actualString: STRING
		do
			actualString := document.get_name
			assert ("test35_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	document :DOCUMENT
	expectedString : STRING

end


