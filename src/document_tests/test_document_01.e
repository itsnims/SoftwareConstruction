note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_DOCUMENT_01
inherit
	EQA_TEST_SET


feature -- Test routines


	test_document_make01
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.make"
		local
			document :DOCUMENT
		do
			create document.make ("name","page title")
			assert ("test25_implemented", True)
		end

end


