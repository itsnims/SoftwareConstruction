note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_SNIPPET01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_snippet_make01
			-- New test routine
		note
			testing:  "covers/{SNIPPET}.make"
		local
			snippet: SNIPPET
		do
			create snippet.make ("code")
			assert ("Test 119 implemented", True)
		end

end


