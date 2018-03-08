note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_DOCUMENT_12

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := "in this test we want to show that preconditions are violated if the input inputs five hundreds character count input is exceeded. For trying purposes, I am trying to write a long sentence so we can prove that our implemented library works as we meant to and expected, if this is not the case, we need to revise our implemetation and correct it so it runs as desired. I ran out of stuff to write, five hundred characters are too many characters. So let us write some gibberish hereeeeeeeeeeeeeeeeeeeee."
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
			assert ("test34_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	document :DOCUMENT
	expectedString : STRING

end



