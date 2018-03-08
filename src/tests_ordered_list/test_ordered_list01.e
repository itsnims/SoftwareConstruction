note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ORDERED_LIST01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_ordered_list_make01
			-- New test routine
		note
			testing:  "covers/{ORDERED_LIST}.make"
		local
			list: ORDERED_LIST
		do
			create list.make

			assert ("test113_implemented", True)
		end

end

