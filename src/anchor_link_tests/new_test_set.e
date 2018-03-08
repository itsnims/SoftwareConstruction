note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_anchor_link_make01
			-- New test routine
		note
			testing:  "covers/{ANCHOR_LINK}.make"
		local
			anchor_link: ANCHOR_LINK
		do

			create anchor_link.make("link","text")
			assert ("test1_implemented", True)
		end





end
