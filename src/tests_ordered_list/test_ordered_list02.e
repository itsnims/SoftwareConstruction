note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ORDERED_LIST02

inherit
	EQA_TEST_SET
		redefine
			on_prepare

		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create list.make
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
		end

feature -- Test routines

	test_ordered_list_add_point01
			-- New test routine
		note
			testing:  "covers/{ORDERED_LIST}.add_point"
		do
			list.add_point (text1)
			list.add_point (text2)

			assert ("test114_implemented", True)
		end

feature{NONE}
	        list: ORDERED_LIST
			text1:TEXT
			text2:TEXT
end



