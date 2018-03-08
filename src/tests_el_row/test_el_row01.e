note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EL_ROW01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_el_row_make01
			-- New test routine
		note
			testing:  "covers/{EL_ROW}.make"
		local
			row: EL_ROW
		do
			create row.make

			assert ("test42_implemented", True)
		end

end


