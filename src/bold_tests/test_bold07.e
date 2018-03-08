note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_BOLD07

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create t1.add_bold("text 1")
			expectedString:= "text 2"
		end

feature -- Test routines

	test_bold_add_bold04
			-- New test routine
		note
			testing:  "covers/{BOLD}.add_bold"
		local
			actualString: STRING
		do

			t1.add_bold(expectedString)
			actualString:= t1.get_bold
			assert ("Test 150 implemented", actualString.same_string (expectedString))
		end
feature {NONE}
	t1: BOLD
	expectedString: STRING
end


