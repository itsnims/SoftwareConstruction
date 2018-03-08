note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EL_ROW02

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create row.make
			create text1.add_text ("item 1")
			create text2.add_text ("item 2")
		end

feature -- Test routines

	test_el_row_add_row_el01
			-- New test routine
		note
			testing:  "covers/{EL_ROW}.add_row_el"
		do
			row.add_row_el (text1)
			row.add_row_el (text2)

			assert ("test43_implemented", True)
		end

feature{NONE}
			row:EL_ROW
			text1:TEXT
			text2:TEXT
end





