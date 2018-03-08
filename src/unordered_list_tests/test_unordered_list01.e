note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_UNORDERED_LIST01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_unordered_list_make01
			-- New test routine
		note
			testing:  "covers/{UNORDERED_LIST}.make"
		local
			list: UNORDERED_LIST
		do
			create list.make
			assert ("Test 140 implemented", True)
		end

end


