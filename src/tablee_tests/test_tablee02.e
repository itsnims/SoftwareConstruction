note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TABLEE02

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create table.make
			create text1.add_text("item 1")
			create text2.add_text("item 2")
			create row1.make
			create row2.make
			row1.add_row_el(text1)
			row2.add_row_el(text2)
		end

feature -- Test routines

	test_tablee_add_col01
			-- New test routine
		note
			testing:  "covers/{TABLEE}.add_col"
		do
			table.add_col(row1)
			table.add_col(row2)
			assert ("Test 124 implemented", True)
		end
feature {NONE}
	table: TABLEE
	text1: TEXT
	text2: TEXT
	row1: EL_ROW
	row2: EL_ROW
end


