note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK12

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
			create alink.make(expectedString,"text")
		end

feature -- Test routines

	test_anchor_link_get_alink02
			-- New test routine
		note
			testing:  "covers/{ANCHOR_LINK}.get_alink"
		local
			actualSTring: STRING
		do

			actualString := alink.get_alink
			assert ("Test 12 implemented", actualString.same_string (expectedString))
		end

feature {NONE}
	alink :ANCHOR_LINK
	expectedString: STRING

end
