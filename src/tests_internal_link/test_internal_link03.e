note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_INTERNAL_LINK03

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create doc.make("", "page title")
		end

feature -- Test routines

    test_internal_link_make03
			-- New test routine
		note
			testing:  "covers/{INTERNAL_LINK}.make"
		local
			link: INTERNAL_LINK
		do
			create link.make ("", doc)
			assert ("test92_implemented",True)
		end
feature{NONE}
     doc: DOCUMENT
end
