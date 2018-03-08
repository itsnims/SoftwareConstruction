note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_PARAGRAPH01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_paragraph_make01
			-- New test routine
		note
			testing:  "covers/{PARAGRAPH}.make"
		local
			par: PARAGRAPH
		do
			create par.make

			assert ("test116_implemented", True)
		end

end


