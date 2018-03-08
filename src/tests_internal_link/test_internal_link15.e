note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_INTERNAL_LINK15

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
			expectedString := "in this test we want to show that preconditions are violated if the input inputs five hundreds character count input is exceeded. For trying purposes, I am trying to write a long sentence so we can prove that our implemented library works as we meant to and expected, if this is not the case, we need to revise our implemetation and correct it so it runs as desired. I ran out of stuff to write, five hundred characters are too many characters. So let us write some gibberish hereeeeeeeeeeeeeeeeeeeee."
			create link.make(expectedString, doc)
		end

feature -- Test routines

	test_internal_link_get_text03
			-- New test routine
		note
			testing:  "covers/{INTERNAL_LINK}.get_text"
		local
			actualString: STRING
		do
			actualString := link.get_text
			assert ("test104_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	link: INTERNAL_LINK
	doc: DOCUMENT
	expectedString : STRING

end

