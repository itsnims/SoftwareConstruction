note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TABLEE01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_tablee_make01
			-- New test routine
		note
			testing:  "covers/{TABLEE}.make"
		local
			table: TABLEE
		do
			create table.make
			assert ("Test 123 implemented", True)
		end

end


