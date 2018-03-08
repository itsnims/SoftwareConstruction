note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK02

inherit
	EQA_TEST_SET
		redefine
			on_prepare


		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		local
			doc:DOCUMENT
			heading:HEADING
		do
			create doc.make("name","page title")
			create heading.make ("heading 1", 1)
			doc.add_element (heading)
		end

feature -- Test routines

	test_anchor_link_make02
			-- New test routine
		note
			testing:  "covers/{ANCHOR_LINK}.make"
		local
			anchor_link:ANCHOR_LINK
		do
			create anchor_link.make ("heading 1", "text")

			assert ("Test 2 implemented", True)
		end

end


