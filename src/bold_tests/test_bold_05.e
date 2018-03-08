note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_BOLD_05

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end



feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString:= ""
			create t1.add_bold(expectedString)

		end

feature -- Test routines

	test_bold_get_bold02
			-- New test routine
		note
			testing:  "covers/{BOLD}.get_bold"
		local
			actualString: STRING
		do

			actualString:= t1.get_bold
			assert ("Test 22 implemented", actualString.same_string (expectedString))
		end
feature {NONE}
	t1: BOLD
	expectedString: STRING
end
