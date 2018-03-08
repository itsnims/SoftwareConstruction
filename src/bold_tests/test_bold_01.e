note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_BOLD_01

inherit
	EQA_TEST_SET


feature -- Test routines

	test_bold_add_bold01
			-- New test routine
		note
			testing:  "covers/{BOLD}.add_bold"
		local
			bolded : BOLD

		do
			create bolded.add_bold("text")
			assert ("test18_implemented", True)
		end

end


