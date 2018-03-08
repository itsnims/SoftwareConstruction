note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_INTERNAL_LINK10

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create doc.make("document", "page title")
			create link.make("text", doc)
			expectedString:=doc.get_name
		end

feature -- Test routines

	test_internal_link_get_ilink01
			-- New test routine
		note
			testing:  "covers/{INTERNAL_LINK}.get_ilink", "covers/{DOCUMENT}.get_name"
		local
			actualString: STRING
		do
			actualString := link.get_ilink
			assert ("test99_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	link: INTERNAL_LINK
	doc: DOCUMENT
	expectedString : STRING

end
